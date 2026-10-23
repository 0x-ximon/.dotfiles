;;; -*- lexical-binding: t -*-

(use-package solidity-mode :ensure t)

(use-package haskell-mode :ensure t)

;; General Purpose Modes
(use-package markdown-mode :ensure t)
(use-package just-mode :ensure t)

(defun ximon/jdtls-command (_interactive)
  "Run jdtls with a persistent per-project workspace directory."
  (let* ((root (expand-file-name
                (if-let* ((proj (project-current)))
                    (project-root proj)
                  default-directory)))
         (data (expand-file-name (md5 root)
                                 (locate-user-emacs-file "jdtls-workspaces/"))))
    (list "jdtls" "-data" data)))


(use-package eglot
  :ensure nil
  :hook
  ((c++-mode csharp-mode c-mode c3-ts-mode asm-mode typescript-ts-mode java-mode haskell-mode solidity-mode tsx-ts-mode markdown-mode text-mode) . eglot-ensure)
  
  :custom
  (eglot-events-buffer-size 0)
  (eglot-autoshutdown t)
  (eglot-connect-timeout 120)
  (eglot-report-progress nil)
  (eglot-code-action-indications nil)
  (eglot-ignored-server-capabilities '(:inlayHintProvider))

  :config
  (add-to-list 'eglot-server-programs
               '(c++-mode . ("clangd")))
  (add-to-list 'eglot-server-programs
               '(csharp-mode . ( "roslyn" "--logLevel" "Information" "--extensionLogDirectory" "/tmp/roslyn/logs" "--stdio" )))
  (add-to-list 'eglot-server-programs
			   '(c-mode . ("clangd")))
  (add-to-list 'eglot-server-programs
			   '(c3-ts-mode . ("c3lsp")))

  (add-to-list 'eglot-server-programs
               '((java-mode java-ts-mode) . ximon/jdtls-command))
  (add-to-list 'eglot-server-programs
			   '(haskell-mode . ("haskell-language-server-wrapper" "--lsp")))
  (add-to-list 'eglot-server-programs
			   '((typescript-ts-mode tsx-ts-mode) . ("typescript-language-server" "--stdio")))
  (add-to-list 'eglot-server-programs
			   '((solidity-mode) . ("nomicfoundation-solidity-language-server" "--stdio")))

  (add-to-list 'eglot-server-programs
			   '((markdown-mode org-mode) . ("harper-ls" "--stdio"))))


(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))
(add-to-list 'treesit-language-source-alist '(c3 "https://github.com/c3lang/tree-sitter-c3"))


(setq-default eglot-workspace-configuration
			  '(:harper-ls (:linters
							(:Spaces :json-false
									 :LongSentences :json-false))))

(use-package eldoc-box
  :ensure t
  :after eldoc)

(provide 'ximon-lsp)

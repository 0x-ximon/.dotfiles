(use-package rust-mode :ensure t)
(use-package go-mode :ensure t)
(use-package zig-mode :ensure t)
(use-package solidity-mode :ensure t)

(use-package circom-mode :ensure t)

(use-package kotlin-mode :ensure t)
(use-package gleam-ts-mode :ensure t :mode (rx ".gleam" eos))

(use-package haskell-mode :ensure t)
(use-package typescript-mode :ensure t)

(use-package markdown-mode :ensure t)

(use-package eglot
  :ensure nil
  :hook
  ((c++-mode csharp-mode c-mode java-mode haskell-mode typescript-mode markdown-mode text-mode) . eglot-ensure)

  :custom
  (eglot-events-buffer-size 0)                                 ;; No event buffers (Lsp server logs)
  (eglot-autoshutdown t)                                       ;; Shutdown unused servers.
  (eglot-report-progress nil)                                  ;; Disable lsp server logs (Don't show lsp messages at the bottom, java)
  (eglot-ignored-server-capabilities '(:inlayHintProvider))    ;; Disable Inlay Hints
  
  :config
  (add-to-list 'eglot-server-programs
               '(c++-mode . ("clangd")))
  (add-to-list 'eglot-server-programs
               '(csharp-mode . ( "roslyn" "--logLevel" "Information" "--extensionLogDirectory" "/tmp/roslyn/logs" "--stdio" )))
  (add-to-list 'eglot-server-programs
			   '(c-mode . ("clangd")))

  (add-to-list 'eglot-server-programs
			   '(java-mode . ("jdtls")))
  (add-to-list 'eglot-server-programs
			   '(haskell-mode . ("haskell-language-server-wrapper" "--lsp")))
  (add-to-list 'eglot-server-programs
			   '(typescript-mode . ("typescript-language-server" "--stdio")))

  (add-to-list 'eglot-server-programs
			   '(markdown-mode . ("markdown-oxide")))
  (add-to-list 'eglot-server-programs
			   '(text-mode . ("harper-ls" "--stdio"))))

(setq-default eglot-workspace-configuration
			  '(:harper-ls (:linters 
							(:Spaces :json-false
									 :LongSentences :json-false))))

(use-package eldoc-box
  :ensure t
  :after eldoc)

(provide 'ximon-lsp)

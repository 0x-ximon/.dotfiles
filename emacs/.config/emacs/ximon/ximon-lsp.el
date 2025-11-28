(use-package go-mode  
  :ensure t)

(use-package markdown-mode
  :ensure t)

(use-package rust-mode
  :ensure t)

(use-package solidity-mode
  :ensure t)

(use-package typescript-mode
  :ensure t)

(use-package zig-mode
  :ensure t)

(use-package haskell-mode
  :ensure t)

(use-package eglot
  :ensure nil
  :hook
  ((c-mode c++-mode go-mode haskell-mode markdown-mode rust-mode solidity-mode text-mode typescript-mode zig-mode) . eglot-ensure)

  :custom
  (eglot-events-buffer-size 0)      ;; No event buffers (Lsp server logs)
  (eglot-autoshutdown t)            ;; Shutdown unused servers.
  (eglot-report-progress nil)       ;; Disable lsp server logs (Don't show lsp messages at the bottom, java)

  :config
  (add-to-list 'eglot-server-programs
               '(text-mode . ("harper-ls" "--stdio")))
  (add-to-list 'eglot-server-programs
               '(c-mode . ("clangd")))
  (add-to-list 'eglot-server-programs
               '(c++-mode . ("clangd")))
  (add-to-list 'eglot-server-programs
               '(go-mode . ("gopls")))
  (add-to-list 'eglot-server-programs
               '(haskell-mode . ("haskell-language-server-wrapper" "--lsp")))
  (add-to-list 'eglot-server-programs
               '(rust-mode . ("rust-analyzer")))
  (add-to-list 'eglot-server-programs
               '(solidity-mode . ("vscode-solidity-server" "--stdio" )))
  (add-to-list 'eglot-server-programs
               '(typescript-mode . ("typescript-language-server" "--stdio")))
  (add-to-list 'eglot-server-programs
               '(zig-mode . ("zls"))))

(setq-default eglot-workspace-configuration
			  '(:harper-ls (:linters 
							(:Spaces :json-false
									 :LongSentences :json-false))))

(use-package eldoc-box
  :ensure t
  :after eldoc)

(provide 'ximon-lsp)

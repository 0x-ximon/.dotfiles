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

(use-package eglot
  :ensure nil
  :hook
  ((c-mode c++-mode go-mode markdown-mode rust-mode solidity-mode text-mode typescript-mode zig-mode) . eglot-ensure)

  :custom
  (eglot-events-buffer-size 0)      ;; No event buffers (Lsp server logs)
  (eglot-autoshutdown t)            ;; Shutdown unused servers.
  (eglot-report-progress nil)       ;; Disable lsp server logs (Don't show lsp messages at the bottom, java)

  :config
  (add-to-list 'eglot-server-programs
               '(text-mode . ("~/.local/share/nvim/mason/bin/harper-ls" "--stdio")))
  (add-to-list 'eglot-server-programs
               '(c-mode . ("~/.local/share/nvim/mason/bin/clangd")))
  (add-to-list 'eglot-server-programs
               '(c++-mode . ("~/.local/share/nvim/mason/bin/clangd")))
  (add-to-list 'eglot-server-programs
               '(go-mode . ("~/.local/share/nvim/mason/bin/gopls")))
  (add-to-list 'eglot-server-programs
               '(rust-mode . ("~/.local/share/nvim/mason/bin/rust-analyzer")))
  (add-to-list 'eglot-server-programs
               '(solidity-mode . ("~/.local/share/nvim/mason/bin/nomicfoundation-solidity-language-server" "--stdio")))
  (add-to-list 'eglot-server-programs
               '(typescript-mode . ("~/.local/share/nvim/mason/bin/typescript-language-server" "--stdio")))
  (add-to-list 'eglot-server-programs
               '(zig-mode . ("~/.local/share/nvim/mason/bin/zls"))))

(setq-default eglot-workspace-configuration
      '(:harper-ls (:linters (:Spaces :json-false))))

(use-package eldoc-box
  :ensure t
  :after eldoc)

(provide 'ximon-lsp)

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
	 (go-mode . lsp)
	 (python-mode . lsp)
	 (solidity-mode . lsp)
	 (rust-mode . lsp)
	 (zig-mode . lsp)
	 (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(setq lsp-headerline-breadcrumb-enable nil)

(use-package lsp-ui 
  :commands lsp-ui-mode)


;; optional if you want which-key integration
(use-package which-key
  :config
  (which-key-mode))

(provide 'lsp-mode-config)

;;; -*- lexical-binding: t -*-

(add-to-list 'load-path
			 (expand-file-name "modes" user-emacs-directory))

;; Neovim languages (highlighting only)
(use-package rust-mode :ensure t)
(use-package go-mode :ensure t)
(use-package zig-mode :ensure t)
(use-package kotlin-mode :ensure t)
(use-package swift-mode :ensure t)
(use-package lua-mode :ensure t)
(use-package noir-mode :ensure t)

(use-package zig-ts-mode :ensure t)
(use-package kotlin-ts-mode :ensure t)
(use-package swift-ts-mode :ensure t)

(defun ximon/remap-ts-mode (lang mode ts-mode)
  "Use TS-MODE instead of MODE when the LANG grammar is available."
  (when (treesit-language-available-p lang)
    (add-to-list 'major-mode-remap-alist (cons mode ts-mode))))

(ximon/remap-ts-mode 'rust   'rust-mode       'rust-ts-mode)
(ximon/remap-ts-mode 'go     'go-mode         'go-ts-mode)
(ximon/remap-ts-mode 'zig    'zig-mode        'zig-ts-mode)
(ximon/remap-ts-mode 'kotlin 'kotlin-mode     'kotlin-ts-mode)
(ximon/remap-ts-mode 'swift  'swift-mode      'swift-ts-mode)
(ximon/remap-ts-mode 'python 'python-mode     'python-ts-mode)
(ximon/remap-ts-mode 'lua    'lua-mode        'lua-ts-mode)

(defvar ximon/neovim-modes
  '(rust-mode rust-ts-mode noir-mode
              go-mode go-ts-mode zig-mode zig-ts-mode sql-mode
              kotlin-mode kotlin-ts-mode swift-mode swift-ts-mode
              python-base-mode lua-mode lua-ts-mode)
  "Major modes whose LSP and formatting belong to Neovim.")

(defun ximon/neovim-mode-p ()
  (apply #'derived-mode-p ximon/neovim-modes))

;; Emacs languages
(require 'c3-ts-mode)
(use-package solidity-mode :ensure t)
(use-package haskell-mode :ensure t)

(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))

;; General Purpose Modes
(use-package just-mode :ensure t)
(use-package markdown-ts-mode
  :ensure nil
  :mode ("\\.md\\'" "\\.mdx\\'" "\\.markdown\\'")
  :config (require 'markdown-ts-mode-x))

(provide 'ximon-modes)

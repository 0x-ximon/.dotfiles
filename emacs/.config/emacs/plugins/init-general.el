;; Use the inbuilt project management plugin
(use-package project
  :ensure nil)

;; Version Control Plugin 
(use-package transient
  :ensure t)

(use-package magit
  :ensure t
  :after transient)

(use-package diff-hl
  :ensure t
  :hook ((dired-mode         . diff-hl-dired-mode-unless-remote)
         (magit-pre-refresh  . diff-hl-magit-pre-refresh)
         (magit-post-refresh . diff-hl-magit-post-refresh))
  :init (global-diff-hl-mode))

;; Useful Plugins for Corfu and Vertigo
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package savehist      ;; Persist history over Emacs restarts. 
  :init
  (savehist-mode))

(use-package marginalia
  :ensure t
  :after vertico
  :init
  (marginalia-mode))

;; Terminal Configuration
(use-package vterm
  :ensure t)

;; Auto Dark Mode Configuration
(use-package auto-dark
  :ensure t
  :init (auto-dark-mode)
  :custom 
  (auto-dark-themes '((doom-acario-dark) (doom-acario-light))))

;; Nerd Icons Configuration
(use-package nerd-icons
  :ensure t
  :if (display-graphic-p))

(use-package nerd-icons-dired
  :ensure t
  :hook (dired-mode . (lambda () (nerd-icons-dired-mode t))))

(use-package nerd-icons-ibuffer
  :ensure t
  :hook (ibuffer-mode . nerd-icons-ibuffer-mode))

(use-package nerd-icons-corfu
  :ensure t
  :after corfu
  :init (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter))

(use-package nerd-icons-completion
  :ensure t
  :after marginalia
  :config
  (nerd-icons-completion-mode)
  :hook
  ('marginalia-mode-hook . 'nerd-icons-completion-marginalia-setup))

(provide 'init-general)

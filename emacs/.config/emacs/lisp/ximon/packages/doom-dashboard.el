(use-package dashboard
             :ensure t
             :config
             (dashboard-setup-startup-hook))

(setq 
  dashboard-startup-banner "~/.dotfiles/emacs/.config/emacs/assets/logo.txt")

(setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*")))
(setq dashboard-banner-logo-title nil)
(setq dashboard-show-shortcuts nil)
(setq dashboard-center-content t)

(setq dashboard-set-footer nil)

(provide 'doom-dashboard)

(use-package dashboard
  :ensure t

  :config
  (dashboard-setup-startup-hook)

  :custom
  (dashboard-startup-banner "~/.dotfiles/emacs/.config/emacs/assets/logo.txt")

  (dashboard-center-content t)
  (dashboard-vertically-center-content t)

  (dashboard-display-icons-p t)
  (dashboard-icon-type 'all-the-icons)

  (dashboard-startupify-list '(dashboard-insert-banner
                               dashboard-insert-items
                               dashboard-insert-init-info))

  (dashboard-items '((recents   . 5)))
  (dashboard-item-shortcuts '((recents   . "r")))

  (dashboard-show-shortcuts t)
)
(setq initial-buffer-choice (lambda () (get-buffer-create dashboard-buffer-name)))
(provide 'doom-dashboard)

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

;; Set the title
(setq dashboard-banner-logo-title nil)

;; ;; Set the banner
(setq dashboard-startup-banner "~/.dotfiles/emacs/.config/emacs/assets/logo.txt")

;; Content is not centered by default. To center, set
(setq dashboard-center-content t)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts nil)

(setq dashboard-set-footer nil)


(provide 'doom-dashboard)

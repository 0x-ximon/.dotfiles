(use-package doom-themes
  :ensure t
  :custom
  (doom-themes-org-config))                               ;; Corrects (and improves) org-mode's native fontification.

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))           

(use-package dashboard
  :ensure t
  :after doom-modeline

  :custom
  (dashboard-center-content t)                            ;; Center the content
  (dashboard-vertically-center-content t)                 ;; Vertically center the content

  (dashboard-display-icons-p t)                           ;; display icons on both GUI and terminal
  (dashboard-icon-type 'nerd-icons)                       ;; use `nerd-icons' package
  (dashboard-show-shortcuts nil)                          ;; Do not show shortcuts
  (dashboard-set-heading-icons t)                         ;; Set icons for headings   
  (dashboard-set-file-icons t)                            ;; Set icons for files

  (dashboard-items '((recents   . 5)                   
                     (projects  . 5)))

  (dashboard-startup-banner 
   (expand-file-name "banner.txt" user-emacs-directory)) ;; Use a custom banner file

  (dashboard-startupify-list '(dashboard-insert-banner
                               dashboard-insert-items
                               dashboard-insert-init-info))
  :hook
  (dashboard-mode . (lambda () (doom-modeline-mode -1)))            ;; Disable doom-modeline in dashboard
  
  :config
  (add-hook 'dashboard-mode-hook (lambda () (setq-local mode-line-format nil)))
  (dashboard-setup-startup-hook))                             ;; Set up the dashboard on startup

(provide 'init-doom)

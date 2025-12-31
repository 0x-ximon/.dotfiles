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
  (dashboard-path-style 'truncate-middle)                 ;; How to handle long path names 
  (dashboard-path-max-length 50)                          ;; Maximum length for path names 

  (dashboard-display-icons-p t)                           ;; display icons on both GUI and terminal
  (dashboard-icon-type 'nerd-icons)                       ;; use `nerd-icons' package
  (dashboard-show-shortcuts nil)                          ;; Do not show shortcuts
  (dashboard-set-heading-icons t)                         ;; Set icons for headings   
  (dashboard-set-file-icons t)                            ;; Set icons for files

  (dashboard-items '((projects  . 5)
					 (recents   . 5)))

  (dashboard-startup-banner 
   (expand-file-name "banner.txt" user-emacs-directory)) ;; Use a custom banner file

  (dashboard-startupify-list '(dashboard-insert-banner
                               dashboard-insert-items
                               dashboard-insert-init-info))
  
  :config
  (dashboard-setup-startup-hook))                             ;; Set up the dashboard on startup

(use-package hide-mode-line
  :ensure t
  :after dashboard
  :hook 
  (dashboard-mode . hide-mode-line-mode)
  (neotree-mode . hide-mode-line-mode)
  
  :config (add-to-list 'doom-modeline-mode-alist '(dashboard-mode)))

(provide 'init-doom)

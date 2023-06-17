(setq user-full-name    "Simon Samuel"
      user-mail-address "salviensky@gmail.com")

(setq display-line-numbers-type 'relative)

;; Don't show the splash screen
(setq inhibit-startup-message t)  ; Comment at end of line!

;; Turn off some unneeded UI elements
(scroll-bar-mode -1)
(menu-bar-mode -1) 
(tool-bar-mode -1)

;; Display line numbers in every buffer
(global-display-line-numbers-mode 1)

(column-number-mode)
(global-display-line-numbers-mode t)

;; Disable line numbers for some modes
(dolist (mode '(
                neotree-mode-hook
                term-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

(setq org-directory "~/Projects/Personal/Tasks")


(provide 'options)

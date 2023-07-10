(setq 
  user-full-name      "Simon Samuel"
  user-mail-address   "salviensky@gmail.com")

(setq org-directory "~/Projects/Personal/Tasks")
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)
(setq inhibit-startup-message t)  

(column-number-mode)
(scroll-bar-mode -1)
(menu-bar-mode -1) 
(tool-bar-mode -1)

(dolist 
  (mode 
    '(
      neotree-mode-hook
      term-mode-hook
      eshell-mode-hook))

  (add-hook 
    mode (
          lambda () (
                     display-line-numbers-mode 0))))

(provide 'options)

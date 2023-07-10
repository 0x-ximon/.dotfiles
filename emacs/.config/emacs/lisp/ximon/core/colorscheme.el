(use-package doom-themes 
             :ensure t 
             :config

             (setq   
               doom-themes-enable-bold     t 
               doom-themes-enable-italic   t) 

             (doom-themes-neotree-config)
             (doom-themes-org-config))

(use-package auto-dark
             :ensure t
             :config (auto-dark-mode t))

(provide 'colorscheme)


(use-package doom-themes 
             :ensure t 
             :config

             (setq   
               doom-themes-enable-bold     t 
               doom-themes-enable-italic   t) 

             (load-theme 'doom-acario-dark t)
             (doom-themes-neotree-config)
             (doom-themes-org-config))

(provide 'colorscheme)

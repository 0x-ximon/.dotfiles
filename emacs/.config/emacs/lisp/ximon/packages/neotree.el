(use-package all-the-icons
             :if (display-graphic-p))

(use-package neotree
             :ensure t)

;; (define-key evil-normal-state-map neotree-mode-map (kbd "a") 'neotree-create-node)
;; (define-key evil-normal-state-map neotree-mode-map (kbd "d") 'neotree-delete-node)

(provide 'neotree)

(use-package evil
             :ensure t
             :init
             (setq evil-want-keybinding nil)
             :config
             (evil-mode 1))

(use-package evil-collection
             :after evil
             :ensure t
             :config
             (evil-collection-init))

(use-package evil-escape
             :ensure t
             :config
             (evil-escape-mode 1))

(use-package evil-org
             :ensure t
             :after org
             :hook (org-mode . (lambda () evil-org-mode))
             :config
             (require 'evil-org-agenda)
             (evil-org-agenda-set-keys))

;; ;; set leader key in all states
;; (evil-set-leader nil (kbd "C-SPC"))
;;
;; ;; set leader key in normal state
;; (evil-set-leader 'normal (kbd "SPC"))
;;
;; ;; set local leader
;; (evil-set-leader 'normal "," t)

(setq-default evil-escape-key-sequence "jk")
(setq-default evil-escape-delay 0.2)

(provide 'evil)

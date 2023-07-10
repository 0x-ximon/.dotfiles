(use-package evil
             :ensure t)

(use-package evil-escape
             :ensure t)

(evil-mode 1)
(evil-escape-mode 1)


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

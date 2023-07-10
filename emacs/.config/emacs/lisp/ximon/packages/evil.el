(use-package evil
             :ensure t)

(use-package key-chord
             :ensure t)

(evil-mode 1)

(key-chord-mode 1)

;; ;; set leader key in all states
;; (evil-set-leader nil (kbd "C-SPC"))
;;
;; ;; set leader key in normal state
;; (evil-set-leader 'normal (kbd "SPC"))
;;
;; ;; set local leader
;; (evil-set-leader 'normal "," t)

(setq key-chord-two-keys-delay 0.1)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)

(provide 'evil)

(use-package doom-modeline
             :ensure     t
             :hook   (after-init . doom-modeline-mode))

(setq doom-modeline-buffer-file-name 'file-name)

;; (setq doom-modeline-height 1) ; optional
(if (facep 'mode-line-active)
  (set-face-attribute 'mode-line-active nil :family "Noto Sans" :height 120) ; For 29+
  (set-face-attribute 'mode-line nil :family "Noto Sans" :height 120))
(set-face-attribute 'mode-line-inactive nil :family "Noto Sans" :height 120)

(provide 'doom-modeline)

(use-package evil-terminal-cursor-changer
  :ensure t)

(unless (display-graphic-p)
  (require 'evil-terminal-cursor-changer)
  (evil-terminal-cursor-changer-activate) )

(provide 'evil-terminal-cursor)

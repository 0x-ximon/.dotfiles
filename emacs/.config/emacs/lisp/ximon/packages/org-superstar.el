(use-package org-superstar
  :ensure t)

(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

(provide 'org-superstar)

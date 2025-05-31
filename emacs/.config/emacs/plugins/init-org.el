(use-package org
  :ensure nil
  :custom
  (org-edit-src-content-indentation 4)  ;; Set src block automatic indent to 4 instead of 2.

  :hook
  (org-mode . org-indent-mode))         ;; Indent text

(use-package toc-org
  :ensure t
  :commands toc-org-enable
  :hook (org-mode . toc-org-mode))

(use-package org-superstar
  :ensure t
  :after org
  :hook (org-mode . org-superstar-mode)
  :custom
  (org-hide-leading-stars nil)
  (org-superstar-leading-bullet ?\s)
  (org-indent-mode-turns-on-hiding-stars nil))

(use-package org-tempo
  :ensure nil
  :after org)

(provide 'init-org)

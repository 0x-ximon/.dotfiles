(use-package all-the-icons
             :if (display-graphic-p))

(use-package neotree
             :ensure t)

(set-display-table-slot standard-display-table 'truncation 32)

(provide 'neotree)

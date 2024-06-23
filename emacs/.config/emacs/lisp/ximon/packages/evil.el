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

(setq-default evil-escape-delay 0.2)
(evil-set-leader 'normal (kbd "SPC"))
(setq-default evil-escape-key-sequence "jk")

(define-key evil-normal-state-map ";w" 'save-buffer)
(define-key evil-normal-state-map ";e" 'neotree-toggle)
(define-key evil-normal-state-map ";d" 'dashboard-open)
(define-key evil-normal-state-map ";b" 'list-buffers)

(define-key evil-normal-state-map (kbd "C-k") 'windmove-up)
(define-key evil-normal-state-map (kbd "C-h") 'windmove-left)
(define-key evil-normal-state-map (kbd "C-j") 'windmove-down)
(define-key evil-normal-state-map (kbd "C-l") 'windmove-right)

(define-key evil-normal-state-map (kbd "-") 'dired-jump)

(define-key evil-normal-state-map (kbd "<leader>ca") 'lsp-execute-code-action)
(define-key evil-normal-state-map (kbd "<leader>sr") 'split-window-right)
(define-key evil-normal-state-map (kbd "<leader>sd") 'split-window-below)
(define-key evil-normal-state-map (kbd "<leader>sx") 'kill-buffer-and-window)

(provide 'evil)

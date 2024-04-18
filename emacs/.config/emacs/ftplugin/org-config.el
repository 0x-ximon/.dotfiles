(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
	      (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))))

(setq-default org-enforce-todo-dependencies t)

(setq org-adapt-indentation t)
(setq org-startup-indented t)

(add-hook 'text-mode-hook 'visual-line-mode)

(provide 'org-config)

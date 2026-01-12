(use-package apheleia
  :ensure t
  :init 
  (apheleia-global-mode +1)
  
  :custom
  (apheleia-timeout 0.5) 
  (apheleia-log-only-errors t) 
  
  :config
  (setf (alist-get 'clang-format apheleia-formatters) '("clang-format" "-assume-filename" filepath))
  (setf (alist-get 'c++-mode apheleia-mode-alist) 'clang-format)
  (setf (alist-get 'c-mode apheleia-mode-alist) 'clang-format)

  (setf (alist-get 'charpier apheleia-formatters) '("csharpier" "format"))
  (setf (alist-get 'csharp-mode apheleia-mode-alist) 'csharpier)

  (setf (alist-get 'ormolu apheleia-formatters) '("ormolu" "--stdin-input-file" filepath))
  (setf (alist-get 'haskell-mode apheleia-mode-alist) 'ormolu)

  (setf (alist-get 'ruff apheleia-formatters) '("ruff" "format" "-"))
  (setf (alist-get 'python-mode apheleia-mode-alist) 'ruff)

  (setf (alist-get 'gleam apheleia-formatters) '("gleam" "format"))
  (setf (alist-get 'gleam-ts-mode apheleia-mode-alist) 'gleam)

  (setf (alist-get 'asm-mode apheleia-mode-alist) nil))

(provide 'init-apheleia)

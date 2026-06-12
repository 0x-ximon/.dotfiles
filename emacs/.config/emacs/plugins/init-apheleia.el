(use-package apheleia
  :ensure t
  :init 
  (apheleia-global-mode +1)
  
  :custom
  (apheleia-timeout 0.5) 
  (apheleia-log-only-errors t) 
  
  :config
  (setf (alist-get 'clang-format apheleia-formatters) '("clang-format" "-"))
  (setf (alist-get 'charpier apheleia-formatters) '("csharpier" "format"))
  (setf (alist-get 'java-format apheleia-formatters) '("google-java-format" "--aosp" "-"))
  (setf (alist-get 'fourmolu apheleia-formatters) '("fourmolu" "--stdin-input-file" "-"))
  (setf (alist-get 'biome apheleia-formatters) '("biome" "format" "--fix" "--stdin-file-path" filepath))
  (setf (alist-get 'prettierd apheleia-formatters) '("prettierd" "invoke" "-"))
  (setf (alist-get 'ruff-isort apheleia-formatters) '("ruff" "check" "--select" "I" "--fix" "--stdin-filename" filepath "-"))
  (setf (alist-get 'ruff apheleia-formatters) '("ruff" "format" "-"))

  (setf (alist-get 'c++-mode apheleia-mode-alist) 'clang-format)
  (setf (alist-get 'csharp-mode apheleia-mode-alist) 'csharpier)
  (setf (alist-get 'c-mode apheleia-mode-alist) 'clang-format)

  (setf (alist-get 'typescript-mode apheleia-mode-alist) 'biome)
  (setf (alist-get 'python-mode apheleia-mode-alist) '(ruff-isort ruff))
  (setf (alist-get 'java-mode apheleia-mode-alist) 'java-format)
  (setf (alist-get 'haskell-mode apheleia-mode-alist) 'fourmolu))

(provide 'init-apheleia)

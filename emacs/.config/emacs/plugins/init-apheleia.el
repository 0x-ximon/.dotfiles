(use-package apheleia
  :ensure t
  :init 
  (apheleia-global-mode +1)
  
  :custom
  (apheleia-timeout 0.5) 
  (apheleia-log-only-errors t) 
  
  :config
  ;; TODO: Verify that these work
  (setf (alist-get 'ruff apheleia-formatters)       '("ruff" "format" "-"))
  (setf (alist-get 'clang-format apheleia-formatters) '("clang-format" "-assume-filename" filepath))
  (setf (alist-get 'forge_fmt apheleia-formatters) '("forge fmt" "-"))
  (setf (alist-get 'goimports apheleia-formatters) '("goimports"))
  (setf (alist-get 'gofmt apheleia-formatters)     '("gofmt"))
  (setf (alist-get 'rustfmt apheleia-formatters)   '("rustfmt"))
  
  (setf (alist-get 'biome apheleia-formatters)    '(apheleia-npx "biome" "format" "--stdin-file-path" filepath))
  (setf (alist-get 'deno_fmt apheleia-formatters) '("deno" "fmt" "-"))
  (setf (alist-get 'prettierd apheleia-formatters) '("prettierd"))
  (setf (alist-get 'prettier apheleia-formatters)  '(apheleia-npx "prettier" "--stdin-filepath" filepath))

  
  (setf (alist-get 'python-mode apheleia-mode-alist) 'ruff)
  (setf (alist-get 'c++-mode apheleia-mode-alist) 'clang-format)
  (setf (alist-get 'solidity-mode apheleia-mode-alist) 'forge_fmt)
  (setf (alist-get 'go-mode apheleia-mode-alist) '(goimports gofmt))
  (setf (alist-get 'rust-mode apheleia-mode-alist) 'rustfmt)
  (setf (alist-get 'typescript-mode apheleia-mode-alist) 
        '(biome deno_fmt prettierd prettier))
  )

(provide 'init-apheleia)

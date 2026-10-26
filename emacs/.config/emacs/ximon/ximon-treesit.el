;;; -*- lexical-binding: t -*-

(require 'treesit)

(add-to-list 'treesit-language-source-alist '(c3 "https://github.com/c3lang/tree-sitter-c3"))

;; Use Neovim's parsers (<lang>.so) unless Emacs has its own libtree-sitter-<lang>.so
(defvar ximon/nvim-parser-dir
  (expand-file-name "nvim/site/parser/"
                    (or (getenv "XDG_DATA_HOME") "~/.local/share/")))

(when (file-directory-p ximon/nvim-parser-dir)
  (add-to-list 'treesit-extra-load-path ximon/nvim-parser-dir)
  (dolist (file (directory-files ximon/nvim-parser-dir nil "\\.so\\'"))
    (let* ((name (file-name-sans-extension file))
           (lang (string-replace "_" "-" name))
           (own (locate-user-emacs-file
                 (format "tree-sitter/libtree-sitter-%s.so" lang))))
      (unless (file-exists-p own)
        (add-to-list 'treesit-load-name-override-list
                     (list (intern lang) name (concat "tree_sitter_" name)))))))

(provide 'ximon-treesit)

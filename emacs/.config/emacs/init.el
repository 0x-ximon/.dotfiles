(add-to-list 'load-path "~/.dotfiles/emacs/.config/emacs/lisp/ximon/")
(add-to-list 'load-path "~/.dotfiles/emacs/.config/emacs/lisp/ximon/core/")
(add-to-list 'load-path "~/.dotfiles/emacs/.config/emacs/lisp/ximon/packages/")

(require 'straight)

(require 'custom)
(require 'options)
(require 'keymaps)
(require 'colorscheme)

(require 'doom-dashboard)
(require 'doom-modeline)
(require 'evil)
(require 'neotree)
(require 'wakatime)
(require 'neotree)
(require 'grammarly)


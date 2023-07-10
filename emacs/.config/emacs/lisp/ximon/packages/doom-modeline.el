(use-package doom-modeline
             :ensure     t
             :hook   (after-init . doom-modeline-mode))

;; (setq doom-modeline-height 1) ; optional
(if (facep 'mode-line-active)
  (set-face-attribute 'mode-line-active nil :family "Noto Sans" :height 120) ; For 29+
  (set-face-attribute 'mode-line nil :family "Noto Sans" :height 120))
(set-face-attribute 'mode-line-inactive nil :family "Noto Sans" :height 120)

(setq doom-modeline-lsp t)
(setq doom-modeline-irc t)
(setq doom-modeline-gnus t)
(setq doom-modeline-time t)
(setq doom-modeline-icon t)

(setq doom-modeline-modal t)
(setq doom-modeline-hud nil)
(setq doom-modeline-mu4e nil)
(setq doom-modeline-battery t)
(setq doom-modeline-height 30)

(setq doom-modeline-github nil)
(setq doom-modeline-bar-width 4)
(setq doom-modeline-time-icon t)
(setq doom-modeline-persp-name t)
(setq doom-modeline-persp-icon t)

(setq doom-modeline-modal-icon t)
(setq doom-modeline-gnus-timer 2)
(setq doom-modeline-buffer-name t)
(setq doom-modeline-minor-modes nil)
(setq doom-modeline-indent-info nil)

(setq doom-modeline-number-limit 99)
(setq doom-modeline-workspace-name t)
(setq doom-modeline-buffer-encoding t)
(setq doom-modeline-vcs-max-length 12)
(setq doom-modeline-enable-word-count nil)

(setq doom-modeline-major-mode-icon nil)
(setq doom-modeline-buffer-state-icon t)
(setq doom-modeline-unicode-fallback nil)
(setq doom-modeline-window-width-limit 80)
(setq doom-modeline-irc-stylize 'identity)

(setq doom-modeline-checker-simple-format t)
(setq doom-modeline-project-detection 'auto)
(setq doom-modeline-major-mode-color-icon t)
(setq doom-modeline-github-interval (* 30 60))
(setq doom-modeline-buffer-modification-icon t)

(setq doom-modeline-display-default-persp-name t)
(setq doom-modeline-highlight-modified-buffer-name t)
(setq doom-modeline-display-misc-in-all-mode-lines t)
(setq doom-modeline-buffer-file-name-style 'file-name)
(setq doom-modeline-gnus-excluded-groups '("dummy.group"))

(setq doom-modeline-env-version t)
(setq doom-modeline-env-enable-go t)
(setq doom-modeline-env-enable-rust t)
(setq doom-modeline-env-enable-ruby t)
(setq doom-modeline-env-enable-perl t)
(setq doom-modeline-env-enable-python t)
(setq doom-modeline-env-enable-elixir t)

(setq doom-modeline-env-go-executable "go")
(setq doom-modeline-env-ruby-executable "ruby")
(setq doom-modeline-env-perl-executable "perl")
(setq doom-modeline-env-elixir-executable "iex")
(setq doom-modeline-env-rust-executable "rustc")
(setq doom-modeline-env-python-executable "python") 

(setq doom-modeline-env-load-string "...")
(setq doom-modeline-after-update-env-hook nil)
(setq doom-modeline-before-update-env-hook nil)
(setq doom-modeline-always-visible-segments '(mu4e irc))
(setq doom-modeline-continuous-word-count-modes '(markdown-mode gfm-mode org-mode))

(provide 'doom-modeline)

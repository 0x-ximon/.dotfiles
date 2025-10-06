(use-package general
  :ensure t
  :config
  (general-evil-setup)

  ;; General Keybindings
  (general-def 'normal
    "-" 'dired-jump
    "U" 'evil-redo)

  (general-def 'normal 'override
    "H" 'evil-beginning-of-line
    "L" 'evil-end-of-line
    "J" 'evil-forward-paragraph
    "K" 'evil-backward-paragraph)

  ;; Set up 'SPC' as the leader key
  (general-create-definer ximon/leader
    :states 'normal
    :keymaps 'override
    :prefix "SPC")

  ;; Set up ";" as the local leader key
  (general-create-definer ximon/local-leader
    :states 'normal
    :keymaps 'local
    :prefix ";")

  ;; Quick Keymaps
  (ximon/leader
    "w" '(evil-update :wk "Quick Write")
    "q" '(evil-quit :wk "Quick Quit"))

  (ximon/leader
	"SPC" '(project-find-file :wk "Find File")
	"!"   '(vterm-other-window :wk "Terminal")
	"."   '(neotree-toggle :wk "Explorer")
	"/"   '(consult-grep :wk "Grep")
	"%"   '(magit :wk "Magit"))

  ;; Window Keymaps
  (ximon/leader
    "_" '(evil-window-split :wk "Split Window Below")
    "|" '(evil-window-vsplit :wk "Split Window Right"))

  (general-def normal 
    "M-h" '(windmove-left :wk "Move to window left")
    "M-l" '(windmove-right :wk "Move to window right")
    "M-j" '(windmove-down :wk "Move to window below")
    "M-k" '(windmove-up :wk "Move to window above"))

  (general-def 'normal
    "C-h" '(evil-window-move-far-left :wk "Move window to far left")
    "C-l" '(evil-window-move-far-right :wk "Move window to far right")
    "C-j" '(evil-window-move-very-bottom :wk "Move window to very bottom")
    "C-k" '(evil-window-move-very-top :wk "Move window to very top"))

  (general-def 'normal 
    "C-<left>" '(evil-window-decrease-width :wk "Decrease window width")
    "C-<right>" '(evil-window-increase-width :wk "Increase window width")
    "C-<down>" '(evil-window-decrease-height :wk "Decrease window height")
    "C-<up>" '(evil-window-increase-height :wk "Increase window height"))

  ;; Buffer Keymaps
  (general-def 'normal
    "[b" '(previous-buffer :wk "Previous buffer")
    "]b" '(next-buffer :wk "Next buffer"))

  (ximon/leader
    "b" '(:ignore t :wk "Buffer")
    "b s" '(scratch-buffer :wk "scratch buffer")
    "b x" '(kill-current-buffer :wk "Exit current buffer")
    "b l" '(list-buffers :wk "List buffers"))

  ;; Tab Keymaps
  (general-def 'normal
    "[TAB" '(tab-bar-switch-to-prev-tab :wk "Previous tab")
    "]TAB" '(tab-bar-switch-to-next-tab :wk "Next tab"))

  (ximon/leader
    "TAB" '(:ignore t :wk "Tab")
    "TAB n" '(tab-new :wk "New tab"))
  
  ;; LSP Keymaps
  (general-define-key 
   :states 'normal 
   :keymaps '(eglot-mode-map override)
   "?"   '(eldoc-box-help-at-point :wk "Hover")
   "$"   '(eldoc-box-help-at-point :wk "Diagnostic")
   "g d" '(xref-find-definitions :wk "Go to Definition")
   "g r" '(xref-find-references :wk "Find References")
   "g e" '(eglot-find-declaration :wk "Go to Declaration")
   "g i" '(eglot-find-implementation :wk "Go to Implementation")
   "g t" '(eglot-find-typeDefinition :wk "Go to Type Definition"))
  
  (defun diagnostics-goto (&optional next filter)
	(interactive "P")
	(let ((dir (if next 1 -1)))
      (flymake-goto-next-error dir filter)))

  (general-def 'normal 'override
	"[d" '((lambda () (interactive) (diagnostics-goto nil)) :wk "Previous Diagnostic")
	"]d" '((lambda () (interactive) (diagnostics-goto t)) :wk "Next Diagnostic")
	"[e" '((lambda () (interactive) (diagnostics-goto nil '(:error))) :wk "Previous Error")
	"]e" '((lambda () (interactive) (diagnostics-goto t '(:error))) :wk "Next Error")
	"[w" '((lambda () (interactive) (diagnostics-goto nil '(:warning))) :wk "Previous Warning")
	"]w" '((lambda () (interactive) (diagnostics-goto t '(:warning))) :wk "Next Warning")
	"[n" '((lambda () (interactive) (diagnostics-goto nil '(:note))) :wk "Previous Note")
	"]n" '((lambda () (interactive) (diagnostics-goto t '(:note))) :wk "Next Note"))

  (ximon/leader eglot-mode-map
	"l a" '(eglot-code-actions :wk "LSP Actions")
	"l f" '(eglot-format :wk "LSP Format")
	"l r" '(eglot-rename :wk "LSP Rename")))

(provide 'ximon-keymaps)

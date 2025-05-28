;; This increases the garbage collection threshold to reduce pauses during Emacs startup.
(setq gc-cons-threshold 
    (* 50 1000 1000))

(provide 'ximon-options)
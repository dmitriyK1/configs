(use-package better-defaults)
(use-package sane-defaults)
(load-file "~/.emacs.d/config/sensible-defaults.el")

;; make scrolling smoother
(setq scroll-margin 5
scroll-conservatively 9999
scroll-step 1)

(set-default 'imenu-auto-rescan t)

(setq sentence-end-double-space nil)

(provide 'init-set)



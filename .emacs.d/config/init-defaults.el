(use-package better-defaults)
(use-package sane-defaults)
(load-file "~/.emacs.d/config/sensible-defaults.el")

(electric-pair-mode)

;; make scrolling smoother
(setq scroll-margin 5
scroll-conservatively 9999
scroll-step 1)

;; save on focus lost
(add-hook 'focus-out-hook 'save-buffer)

; Add proper word wrapping
(global-visual-line-mode t)

(set-default 'imenu-auto-rescan t)

(setq sentence-end-double-space nil)

(provide 'init-defaults)



(use-package better-defaults)
(use-package sane-defaults)
(load-file "~/.emacs.d/lisp/sensible-defaults.el")

;; save on focus lost
(add-hook 'focus-out-hook 'save-buffer)

; Add proper word wrapping
(global-visual-line-mode t)

(set-default 'imenu-auto-rescan t)

(setq sentence-end-double-space nil)

(provide 'init-defaults)



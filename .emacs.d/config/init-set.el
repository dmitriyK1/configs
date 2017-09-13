(use-package better-defaults)
(use-package sane-defaults)
(load-file "~/.emacs.d/config/sensible-defaults.el")

;; prevent anzu putting itself into modeline (spaceline handles it)
(setq anzu-cons-mode-line-p nil)

;; make scrolling smoother
(setq scroll-margin 5
scroll-conservatively 9999
scroll-step 1)

(set-default 'imenu-auto-rescan t)

(setq sentence-end-double-space nil)

;; supress ad-handle-definition messages
(setq ad-redefinition-action 'accept)

(provide 'init-set)



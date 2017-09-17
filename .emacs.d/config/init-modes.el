(global-prettify-symbols-mode)

;; Add proper word wrapping
(global-visual-line-mode t)

;; automatically insert brackets
(electric-pair-mode)

;; colorize variable names in different colors
(global-color-identifiers-mode)

;; colorize parentheses in different colors
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; save state of a previous session (buffers, modes)
(desktop-save-mode 1)

(provide 'init-modes)

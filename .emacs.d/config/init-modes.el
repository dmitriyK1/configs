;; colorize variable names in different colors
(global-color-identifiers-mode)

;; colorize parentheses in different colors
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(provide 'init-modes)

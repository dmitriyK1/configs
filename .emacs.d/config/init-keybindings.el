;; use M-w to copy a whole line
(global-set-key [remap kill-ring-save] 'easy-kill)

;; enable narrowing
(put 'narrow-to-defun  'disabled nil)
(put 'narrow-to-page   'disabled nil)
(put 'narrow-to-region 'disabled nil)

(use-package guru-mode
  :config (guru-global-mode))

(use-package key-chord
  :config
  (key-chord-define-global "xx" 'helm-M-x)
  (key-chord-mode t)
)

;; enable recent files mode
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-;") 'comment-or-uncomment-region)

;; windows resizing
(global-set-key (kbd "s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "s-<up>") 'enlarge-window)
(global-set-key (kbd "s-<down>") 'shrink-window)

;; buffer management
(global-set-key (kbd "M-]") 'next-buffer)
(global-set-key (kbd "M-[") 'previous-buffer)

(defun kill-current-buffer ()
  "Kills the current buffer"
  (interactive)
  (kill-buffer (buffer-name)))
(global-set-key (kbd "C-x C-k") 'kill-current-buffer)

(defun nuke-all-buffers ()
  "Kill all buffers, leaving *scratch* only"
  (interactive)
  (mapcar (lambda (x) (kill-buffer x))
          (buffer-list))
  (delete-other-windows))
(global-set-key (kbd "C-x C-S-k") 'nuke-all-buffers)

(global-set-key (kbd "C-c r") 'revert-buffer)

;; Shortcuts
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-h") 'mark-paragraph)
(global-set-key (kbd "M-i") 'imenu)
(global-set-key (kbd "C-^") 'join-line)
(global-set-key (kbd "C-x B") 'ibuffer)

;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key (kbd "C-;") 'ace-jump-mode)

(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

(global-set-key (kbd "C-M-h") 'backward-kill-word)
(global-set-key (kbd "C-x \\") 'align-regexp)
(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "C-h a") 'apropos)

(when (string-match "apple-darwin" system-configuration)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'super))

(defun find-user-init-file ()
  "Edit the `user-init-file', in another window."
  (interactive)
  (find-file-other-window user-init-file))
(global-set-key (kbd "C-c I") 'find-user-init-file)

(provide 'init-keybindings)

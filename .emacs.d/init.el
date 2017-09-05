;; NOTES

;; M-x revert-buffer      // revert a buffer to initial state

;; some stuff taken from
;; http://aaronbedra.com/emacs.d/
;; http://seancribbs.com/emacs.d

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Package management start
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)

; list the packages you want
(setq package-list '(undo-tree spacemacs-theme))

; list the repositories containing them
(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Package management end
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-hl-line-mode 1)

(load-theme 'spacemacs-dark t)

;; enable recent files mode
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(defalias 'yes-or-no-p 'y-or-n-p)

;; disable backup files
(setq make-backup-files nil)
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; text selection behavior
(delete-selection-mode t)
(transient-mark-mode t)
(setq x-select-enable-clipboard t)

;; enable trailing newline
(setq require-final-newline t)

;; use brew services start emacs instead
;; enable server mode
;; (require 'server)
;; (server-start)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(setq inhibit-splash-screen t
      inhibit-startup-message t
      initial-scratch-message nil)

(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))

(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-;") 'comment-or-uncomment-region)
(global-set-key (kbd "M-/") 'hippie-expand)

(setq echo-keystrokes 0.1
      use-dialog-box nil
      visible-bell t)
(show-paren-mode t)

(ido-mode t)
(setq ido-enable-flex-matching t
      ido-use-virtual-buffers t)

(setq column-number-mode t)

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

;; display current time
(setq display-time-interval 1)
(setq display-time-format "%H:%M:%S")
(display-time-mode)

(setq sentence-end-double-space nil)

(setq-default cursor-type 'bar)

(blink-cursor-mode 0)

;; ================================================================================
;; IDO CONFIG
;; ================================================================================
(require 'ido)
(ido-mode 1)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point 'guess)
;; ================================================================================

;; save on focus lost
(add-hook 'focus-out-hook 'save-buffer)

;; refresh buffers when files changes on disk
(global-auto-revert-mode t)

;; Shortcuts
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-h") 'mark-paragraph)
(global-set-key (kbd "M-i") 'imenu)
(global-set-key (kbd "C-^") 'join-line)
(global-set-key (kbd "C-x B") 'ibuffer)

;; Start fullscreen (cross-platf)
(add-hook 'window-setup-hook 'toggle-frame-fullscreen t)

; Add proper word wrapping
(global-visual-line-mode t)

(if (string-match "apple-darwin" system-configuration)
    (set-face-font 'default "Monaco-13")
  (set-frame-font "Monospace-10"))

(when (string-match "apple-darwin" system-configuration)
  (setq mac-allow-anti-aliasing t)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'super))

(set-frame-parameter nil 'fullscreen 'fullscreen)

(setq inhibit-startup-screen t)

;; swap alt and cmd
(when (eq system-type 'darwin)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil))

;; delete selected text on typing
(delete-selection-mode)

;; Allow pasting selection outside of Emacs
(setq x-select-enable-clipboard t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(horizontal-scroll-bar-mode -1)

(show-paren-mode 1)

;; Show keystrokes in progress
(setq echo-keystrokes 0.1)

;; Answering just 'y' or 'n' will do
(defalias 'yes-or-no-p 'y-or-n-p)

;; UTF-8 please
(setq locale-coding-system 'utf-8) ; pretty
(set-terminal-coding-system 'utf-8) ; pretty
(set-keyboard-coding-system 'utf-8) ; pretty
(set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8) ; with sugar on top

;; Never insert tabs
(set-default 'indent-tabs-mode nil)

;; Show me empty lines after buffer end
(set-default 'indicate-empty-lines t)

(load-theme 'misterioso)

;; Highlight current line
(global-hl-line-mode 1)

(setq electric-indent-mode nil)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; no bell
(setq ring-bell-function 'ignore)

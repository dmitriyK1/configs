;; https://habrahabr.ru/post/39564/

;; packages

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                        ("marmalade" . "http://marmalade-repo.org/packages/")
                        ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")))
(package-initialize)

(defun require-package (package)
  (setq-default highlight-tabs t)
  "Install given PACKAGE."
  (unless (package-installed-p package)
    (unless (assoc package package-archive-contents)
      (package-refresh-contents))
    (package-install package)))

(load-theme 'gruvbox t)

(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-insert-state-cursor '("red" bar))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

; show matching parentheses
(show-paren-mode)

; use <S-left> <S-right> <S-top> <S-bottom> to navigate splits
(windmove-default-keybindings)

; switch splits using ace-window package
(global-set-key (kbd "M-p") 'ace-window)

; (evil-mode)

;; ================================================================================================


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; (custom-set-variables
;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
;; '(ansi-color-names-vector
;;   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
;; '(custom-enabled-themes nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; display column & row in status bar
(column-number-mode t)

;; display time in status bar
(setq display-time-interval 1)
(setq display-time-format "%H:%M:%S")
(display-time-mode)

;; scroll bar
(scroll-bar-mode -1)

;; tool bar
(tool-bar-mode -1)

;; menu bar
(menu-bar-mode -1)

(set-background-color "#333333")
(set-foreground-color "#ffffff")

;; encoding to utf-8
(setq file-name-coding-system 'utf-8)

;; lesser scrollstep
(setq scroll-step 1)

;; highlight active line
(global-hl-line-mode 1)

(windmove-default-keybindings 'meta)

;; confirm with y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; easier buffer switching on ctrl-x b
(iswitchb-mode 1)

;; buffer switching keybindings
(global-set-key [?\C-,] 'previous-buffer)
(global-set-key [?\C-.] 'next-buffer)

;; macro recording keybindings
(global-set-key [f2] 'kmacro-call-macro)
(global-set-key [f3] 'kmacro-start-macro-or-insert-counter)
(global-set-key [f4] 'kmacro-end-or-call-macro)

;; set mark
(global-set-key [f5] 'bookmark-set)
(global-set-key [f6] 'bookmark-jump)

;; save session on quit
(desktop-save-mode t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(background-color "#002b36")
 '(background-mode dark)
 '(cursor-color "#839496")
 '(custom-safe-themes
   (quote
    ("5b696536a8a82706b492d07c1acc7bf36cd30ab7cd22afa340730eccce6cfff3" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(foreground-color "#839496")
 '(package-selected-packages
   (quote
    (ace-window gruvbox-theme evil color-theme-solarized))))

;; https://habrahabr.ru/post/39564/



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes nil))
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


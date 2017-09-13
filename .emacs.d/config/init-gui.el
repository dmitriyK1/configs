(set-mouse-color "#ffffff")

(when window-system
  (tooltip-mode -1))

(load-theme 'spacemacs-dark t)

(use-package spaceline-config
  :config
  (spaceline-spacemacs-theme)
  (spaceline-helm-mode)
  (spaceline-info-mode))

;; Color the gutter
;; (use-package fill-column-indicator
;;   :config
;;     (setq fci-rule-column 120)
;;     (fci-mode))

(setq inhibit-splash-screen t
      inhibit-startup-message t
      initial-scratch-message nil)

(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))

(setq-default cursor-type 'bar)

(setq column-number-mode t)

(blink-cursor-mode 0)

;; display current time
(setq display-time-interval 1)
(setq display-time-format "%H:%M:%S")
(display-time-mode)

(show-paren-mode t)

(setq use-dialog-box nil)

(global-hl-line-mode 1)

;; Start fullscreen (cross-platf)
(add-hook 'window-setup-hook 'toggle-frame-fullscreen t)

(if (string-match "apple-darwin" system-configuration)
  (setq mac-allow-anti-aliasing t)
  (set-face-font 'default "Monaco-13")
  (set-frame-font "Monospace-10"))

(provide 'init-gui)

(require 'package)

(setq package-enable-at-startup nil)

; list the repositories containing them
(setq package-archives
       '(("gnu"        . "http://elpa.gnu.org/packages/")
        ("org"         . "http://orgmode.org/elpa/")
        ("melpa"       . "http://melpa.org/packages/")
        ("marmalade"   . "http://marmalade-repo.org/packages/")))

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; list the packages you want
(setq package-list '(
  undo-tree
  spacemacs-theme
  better-defaults
  magit
  smooth-scrolling
  dashboard
  ace-jump-mode
  helm
  helm-projectile
  helm-swoop
  which-key
  spaceline
  key-chord
  auto-package-update
  whitespace-cleanup-mode
  guru-mode
  autopair
  use-package))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; use-package config
(setq use-package-verbose t)
;; (setq use-package-always-ensure t)

(use-package auto-compile
  :config (auto-compile-on-load-mode))

(setq load-prefer-newer t)

(use-package auto-package-update
  :config
  (auto-package-update-maybe)
  (setq auto-package-update-prompt-before-update t))

(provide 'init-package)

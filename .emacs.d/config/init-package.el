(require 'package)

(setq package-enable-at-startup nil)
(setq load-prefer-newer t)

; list the repositories containing them
(setq package-archives
       '(("gnu"        . "http://elpa.gnu.org/packages/")
        ; ("org"         . "http://orgmode.org/elpa/")
        ("melpa"       . "http://melpa.org/packages/")
        ("marmalade"   . "http://marmalade-repo.org/packages/")))

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
(setq use-package-verbose t)

;; packages to be installed
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
  expand-region
  guru-mode
  easy-kill
  easy-kill-extras
  treemacs
  writeroom-mode
  drag-stuff
  info+
  dired+
  markdown-mode+
  anzu
  rainbow-delimiters
  color-identifiers-mode))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; --------------------------------------------------------------------------------
;; Requires
;; --------------------------------------------------------------------------------
(use-package auto-compile
  :config (auto-compile-on-load-mode))

(use-package auto-package-update
  :config
  (auto-package-update-maybe)
  (setq auto-package-update-prompt-before-update t))

(use-package which-key
  :config
  (which-key-mode)
  (which-key-setup-side-window-right))

(use-package anzu
  :init
  (setq anzu-cons-mode-line-p nil)
  :config
  (global-anzu-mode))

(use-package dashboard
  :config
  (dashboard-setup-startup-hook))

(use-package drag-stuff
  :config
  (drag-stuff-global-mode 1)
  (drag-stuff-define-keys))
;; --------------------------------------------------------------------------------

(provide 'init-package)

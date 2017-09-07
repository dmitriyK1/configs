(require 'package)

; list the packages you want
(setq package-list '(
  undo-tree
  spacemacs-theme
  better-defaults
  magit
  smooth-scrolling
  dashboard
  smex
  ace-jump-mode
  helm
  which-key
  spaceline
  key-chord
  use-package))

; list the repositories containing them
(setq package-archives
      '(("elpa"        . "http://tromey.com/elpa/")
        ("gnu"         . "http://elpa.gnu.org/packages/")
        ("org"         . "http://orgmode.org/elpa/")
        ("melpa"       . "http://melpa.org/packages/")
        ("marmalade"   . "http://marmalade-repo.org/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; use-package config
(setq use-package-verbose t)
(setq use-package-always-ensure t)

(defun require-package (package)
  (setq-default highlight-tabs t)
  "Install given PACKAGE."
  (unless (package-installed-p package)
    (unless (assoc package package-archive-contents)
      (package-refresh-contents))
    (package-install package))
  (require package))

(require-package 'use-package)

(use-package auto-compile
  :config (auto-compile-on-load-mode))

(setq load-prefer-newer t)

(provide 'init-package)

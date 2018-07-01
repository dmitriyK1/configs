;; https://gist.github.com/huytd/6b785bdaeb595401d69adc7797e5c22c

(set-frame-parameter nil 'fullscreen 'fullscreen)

(setq inhibit-startup-screen t)

;; Minimal UI
(scroll-bar-mode -1)
(horizontal-scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)

;; ignore byte-compile warnings
(setq byte-compile-warnings '(not unresolved
                                  free-vars
                                  callargs
                                  redefine
                                  obsolete
                                  noruntime
                                  cl-functions
                                  interactive-only
                                  ))

;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
                         ("gnu"   . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; Dependency for ripgrep
(use-package counsel :ensure t)

;; Vim mode
(use-package evil
  :ensure t
  :config
  (evil-mode 1))

 ;; Theme
(use-package dracula-theme
  :ensure t
  :config
  (load-theme 'dracula t))

 ;; Helm
(use-package helm
  :ensure t
  :init
  (setq helm-mode-fuzzy-match t)
  (setq helm-completion-in-region-fuzzy-match t)
  (setq helm-candidate-number-list 50))

 ;; Which Key
(use-package which-key
  :ensure t
  :init
  (setq which-key-separator " ")
  (setq which-key-prefix-prefix "+")
  :config
  (which-key-mode))

;; Custom keybinding
(use-package general
  :ensure t
  :config (general-define-key
  :states '(normal visual insert emacs)
  :prefix "SPC"
  :non-normal-prefix "M-SPC"
  "/"   '(counsel-rg :which-key "ripgrep") ; You'll need counsel package for this
  "TAB" '(switch-to-prev-buffer :which-key "previous buffer")
  "SPC" '(helm-M-x :which-key "M-x")
  "pf"  '(helm-find-file :which-key "find files")
  ;; Files
  "f."  '(helm-find-files :which-key "find files")
  "ff"  '(helm-find-files :which-key "find files")
  "fr"  '(helm-recentf :which-key "recent files")
  ;; Buffers
  "bb"  '(helm-buffers-list :which-key "buffers list")
  "bs"  '(save-buffer :which-key "save buffer")
  "bk"  '(kill-this-buffer :which-key "kill buffer")
  ;; Window
  "wl"  '(windmove-right :which-key "move right")
  "wh"  '(windmove-left :which-key "move left")
  "wk"  '(windmove-up :which-key "move up")
  "wj"  '(windmove-down :which-key "move bottom")
  "w/"  '(split-window-right :which-key "split right")
  "w-"  '(split-window-below :which-key "split bottom")
  "wx"  '(delete-window :which-key "delete window")
  ;; Others
  "at"  '(ansi-term :which-key "open terminal")
))

(use-package magit
  :ensure t)

(use-package evil-magit
  :ensure t)

(use-package evil-commentary
  :ensure t
  :config
  (evil-commentary-mode))

;; no bell
(setq ring-bell-function 'ignore)

;; swap alt and cmd
(when (eq system-type 'darwin)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil))

;; show matching parenthesis
(show-paren-mode 1)

;; Answering just 'y' or 'n' will do
(defalias 'yes-or-no-p 'y-or-n-p)

;; Never insert tabs
(set-default 'indent-tabs-mode nil)

;; Highlight current line
(global-hl-line-mode 1)

(setq electric-indent-mode nil)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; UTF-8 please
(setq locale-coding-system 'utf-8) ; pretty
(set-terminal-coding-system 'utf-8) ; pretty
(set-keyboard-coding-system 'utf-8) ; pretty
(set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8) ; with sugar on top

;; Show keystrokes in progress
(setq echo-keystrokes 0.1)

;; delete selected text on typing
(delete-selection-mode)

;; Show me empty lines after buffer end
(set-default 'indicate-empty-lines t)

;; Allow pasting selection outside of Emacs
(setq x-select-enable-clipboard t)

;; allows to detach M-x customize options to a separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

 ;; Fancy titlebar for MacOS
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq ns-use-proxy-icon  nil)
(setq frame-title-format nil)

;; for ripgrep to work
(setq exec-path
  '(
   "/usr/local/bin"
  )
)

;; save on focus lost (without trashing a minibuffer)
(add-hook 'focus-out-hook (lambda () (cl-flet ((message (format &rest args) nil)) (save-some-buffers t))))

(recentf-mode 1)
(setq recentf-max-menu-items 25)
;; (global-set-key "\C-x\ \C-r" 'recentf-open-files)
(global-set-key "\C-x\ \C-r" 'helm-recentf)
;; run periodically
(run-at-time nil (* 5 60) 'recentf-save-list)

;; Save place in files between Sessions
(save-place-mode 1)
(setq save-place-forget-unreadable-files nil)

;; https://gist.github.com/huytd/6b785bdaeb595401d69adc7797e5c22c
;; useful stuff: https://gitlab.com/buildfunthings/emacs-config/blob/master/loader.org
;; https://www.youtube.com/watch?v=I28jFkpN5Zk
;; https://github.com/flyingmachine/emacs-for-clojure
;; https://github.com/prathamesh-sonpatki/dotemacs/blob/master/hooks/web.el

;; Always load newest byte code
(setq load-prefer-newer t)

;; reduce the frequency of garbage collection by making it happen on
;; each 50MB of allocated data (the default is on every 0.76MB)
(setq gc-cons-threshold 50000000)

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1
      scroll-step 1)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; Newline at end of file
(setq require-final-newline t)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode t)

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

(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :ensure t
  :config
  (exec-path-from-shell-initialize))

;; Dependency for ripgrep
(use-package counsel :ensure t)

;; diminish modes
(use-package diminish :ensure t)

;; All The Icons
(use-package all-the-icons :ensure t)

;; Vim mode
(use-package evil
  :ensure t
  :init
  (setq evil-want-integration nil)
  :config
  (evil-mode 1))

;; NeoTree
(use-package neotree
  :ensure t
  :init
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  (setq projectile-switch-project-action 'neotree-projectile-action)
  :config
  (setq neo-smart-open t)
  (evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
  (evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
  (evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
  (evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter))

  (defun neotree-project-dir ()
    "Open NeoTree using the git root."
    (interactive)
    (let ((project-dir (projectile-project-root))
          (file-name (buffer-file-name)))
      (neotree-toggle)
      (if project-dir
          (if (neo-global--window-exists-p)
              (progn
                (neotree-dir project-dir)
                (neotree-find file-name)))
        (message "Could not find git project root."))))

(global-set-key [f8] 'neotree-project-dir)

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

 ;; Theme
(use-package dracula-theme
  :ensure t
  :config
    (if (display-graphic-p)
        (progn
        ;; if graphic
        (load-theme 'dracula t))
        ;; else
        (load-theme 'doom-one t)
    ))

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
  (setq which-key-idle-delay 0.0)
  (setq which-key-separator " ")
  (setq which-key-prefix-prefix "+")
  :diminish which-key-mode
  :config
  (which-key-mode))
  ;; (which-key-setup-side-window-right))

;; Custom keybinding
(use-package general
  :ensure t
  :config (general-define-key
  :states '(normal visual insert emacs)
  :prefix "SPC"
  :non-normal-prefix "M-SPC"
  ;; "/"   '(counsel-rg :which-key "ripgrep") ; You'll need counsel package for this
  "/"   '(helm-projectile-rg :which-key "ripgrep")
  "TAB" '(switch-to-prev-buffer :which-key "previous buffer")
  "SPC" '(helm-M-x :which-key "M-x")
  "pf"  '(helm-find-file :which-key "find files")
  ;; Files
  "pf"  '(helm-projectile-find-file :which-key "find files")
  "pp"  '(helm-projectile-switch-project :which-key "switch project")
  "pb"  '(helm-projectile-switch-to-buffer :which-key "switch buffer")
  "pr"  '(helm-projectile-recentf :which-key "recent files")
  "ff"  '(helm-find-files :which-key "find files")
  "fr"  '(helm-recentf :which-key "recent files")
  ;; NeoTree
  "ft"  '(neotree-toggle :which-key "toggle neotree")
  "fp"  '(neotree-project-dir :which-key "toggle neotree")
  ;; Buffers
  "bb"  '(helm-mini :which-key "buffers list")
  ;; "bb"  '(helm-buffers-list :which-key "buffers list")
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
  ;; Avy
  "al" '(evil-avy-goto-line :which-key "avy-goto-line")
  "ad" '(evil-avy-goto-word-1 :which-key "avy-goto-word-1")
  "at" '(evil-avy-goto-char-timer :which-key "avy-goto-char-timer")
  "ac" '(evil-avy-goto-char-2 :which-key "avy-goto-char-2")
  ;; Git
  "G"  '(magit :which-key "magit")
  "gs" '(magit-status :which-key "status")
  "gd" '(magit-diff-unstaged :which-key "diff")
  "gx" '(git-gutter+-next-hunk :which-key "next hunk")
  "gX" '(git-gutter+-previous-hunk :which-key "previous hunk")
  ;; Refactor
  "rr" '(tern-rename-variable :which-key "rename variable")
  ;; Others
  ;; "at"  '(ansi-term :which-key "open terminal")
  "q"   '(save-buffers-kill-emacs :which-key "quit emacs")
  "pr"  '(helm-show-kill-ring :which-key "show kill ring")
))

;; enable case-sensitive search
(setq avy-case-fold-search nil)

(global-set-key (kbd "C-;") 'avy-goto-char)
;; (global-set-key (kbd "M-g f") 'avy-goto-line)
;; (global-set-key (kbd "M-g w") 'avy-goto-word-1)
;; (global-set-key (kbd "M-g t") 'avy-goto-char-timer)

(use-package magit :ensure t)

(use-package evil-magit :ensure t)

;; Emacs key bindings
(global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "C-c l") 'evilnc-quick-comment-or-uncomment-to-the-line)
(global-set-key (kbd "C-c c") 'evilnc-copy-and-comment-lines)
(global-set-key (kbd "C-c p") 'evilnc-comment-or-uncomment-paragraphs)

(use-package evil-nerd-commenter
  :ensure t
  :config (evilnc-default-hotkeys))

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode))

;; Vim key bindings
(use-package evil-leader
  :ensure t)
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(evil-leader/set-key
  "ci" 'evilnc-comment-or-uncomment-lines
  "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
  "ll" 'evilnc-quick-comment-or-uncomment-to-the-line
  "cc" 'evilnc-copy-and-comment-lines
  "cp" 'evilnc-comment-or-uncomment-paragraphs
  "cr" 'comment-or-uncomment-region
  "cv" 'evilnc-toggle-invert-comment-line-by-line
  "."  'evilnc-copy-and-comment-operator
  "\\" 'evilnc-comment-operator ; if you prefer backslash key
  ","  'save-buffer
  "d"  'kill-this-buffer
  "se" 'load-user-init-file
  "ss" 'reload-user-init-file
  "q"  'load-scratch-file
  "Ce" 'load-emacs-cheat-file
  "pi" 'package-install
  "pu" 'package-refresh-contents
)

(setq vc-follow-symlinks t)

(global-prettify-symbols-mode 1)

;; (use-package evil-commentary
;;   :ensure t
;;   :config
;;   (evil-commentary-mode))

;; no bell
(setq ring-bell-function 'ignore)

;; swap alt and cmd
(when (eq system-type 'darwin)
  (setq mac-command-modifier 'meta)
 (setq mac-option-modifier 'super))
  ;; (setq mac-option-modifier nil))

;; show matching parenthesis
(show-paren-mode 1)
;; Time taken to highlight the matching parenthesis
(setq show-paren-delay 0)

;; Answering just 'y' or 'n' will do
(defalias 'yes-or-no-p 'y-or-n-p)

;; Never insert tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; Highlight current line
(global-hl-line-mode 1)

(setq electric-indent-mode nil)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; UTF-8 please
(set-language-environment "UTF-8")
(setq locale-coding-system 'utf-8) ; pretty
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8) ; pretty
(set-keyboard-coding-system 'utf-8) ; pretty
(set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8) ; with sugar on top

;; hippie expand is dabbrev expand on steroids
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))

;; use hippie-expand instead of dabbrev
(global-set-key (kbd "M-/") #'hippie-expand)
(global-set-key (kbd "s-/") #'hippie-expand)

;; replace buffer-menu with ibuffer
(global-set-key (kbd "C-x C-b") #'ibuffer)

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

;; save on focus lost (without trashing a minibuffer)
(add-hook 'focus-out-hook (lambda () (cl-flet ((message (format &rest args) nil)) (save-some-buffers t))))

(global-set-key "\C-x\ \C-r" 'helm-recentf)

;; Save place in files between Sessions
(save-place-mode 1)
(setq save-place-forget-unreadable-files nil)

(electric-pair-mode 1)
;; make electric-pair-mode work on more brackets
(setq electric-pair-pairs '(
                            (?\" . ?\")
                            (?\{ . ?\})
                            ) )

;; dired - reuse current buffer by pressing 'a'
(put 'dired-find-alternate-file 'disabled nil)

(use-package anzu
  :ensure t
  :bind (("M-%" . anzu-query-replace)
         ("C-M-%" . anzu-query-replace-regexp))
  :config
  (global-anzu-mode))

(use-package ace-window
  :ensure t
  :config
  (global-set-key (kbd "M-o") 'ace-window))

(use-package evil-numbers :ensure t)
(define-key evil-normal-state-map (kbd "C-c =") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "C-c -") 'evil-numbers/dec-at-pt)

(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

(defun load-user-init-file()
  (interactive)
  (find-file user-init-file))

(defun load-scratch-file()
  (interactive) (find-file "~/buffer"))

(defun load-emacs-cheat-file()
  (interactive) (find-file "~/cheatsheets/emacs.md"))

(defun reload-user-init-file()
  (interactive)
  (load-file user-init-file))

;; Projectile
(use-package projectile
  :ensure t
  :init
  (setq projectile-require-project-root nil) ;; enable projectile even if project file not found (do not use in home folder etc)
  :config
  (projectile-mode 1))

;; C-c p p | counsel-projectile-switch-project | Switch project
;; https://github.com/ericdanan/counsel-projectile
(use-package counsel-projectile
    :ensure t
    :config
    (counsel-projectile-mode))

;; RipGrep
(use-package helm-rg :ensure t)

;; Helm Projectile
(use-package helm-projectile
  :ensure t
  :init
  (setq helm-projectile-fuzzy-match t)
  :config
  (helm-projectile-on))

;; From Pragmatic Emacs a more concise way to kill the buffer.
(global-set-key (kbd "C-x k") 'kill-this-buffer)

;; Mousewheel scrolling can be quite annoying, lets fix it to scroll smoothly.
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

(add-hook 'js-mode-hook 'eslintd-fix-mode)
(add-hook 'js2-mode-hook 'eslintd-fix-mode)
(add-hook 'web-mode-hook 'eslintd-fix-mode)

(setq eslintd-fix-executable "~/.node_modules_global/bin/eslint_d")
(setq flycheck-javascript-eslint-executable "~/.node_modules_global/bin/eslint_d")

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode)
  :config (flycheck-add-mode 'javascript-eslint 'web-mode))

(ido-mode t)
(setq ido-enable-flex-matching t)

;; Powerline
(use-package spaceline
  :ensure t
  :config
  (spaceline-emacs-theme))
(use-package spaceline-all-the-icons
  :ensure t
  :after spaceline
  :init
  ;; (spaceline-toggle-all-the-icons-git-status-off)
  ;; (spaceline-toggle-all-the-icons-time-off)
  :config (spaceline-all-the-icons-theme))

(use-package yasnippet
  :ensure t
  :config
  (setq yas-snippet-dirs (append yas-snippet-dirs '("~/.emacs.d/Es6-React-Snippets-Emacs/snippets")))
  (yas-global-mode 1))

(use-package web-mode
  :ensure t
  :config
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-css-colorization t)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-content-types-alist
    '(("jsx" . "\\.js[x]?\\'")))
  (add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . web-mode)))

; (use-package github-theme :ensure t)

;; http://ccann.github.io/2017/01/15/structural-editing-lisp.html
;; (add-hook 'cider-mode-hook #'clj-refactor-mode)

;; (add-hook 'clojure-mode-hook #'lispy-mode)

;; (use-package clj-refactor
;;   :ensure t
;;   :defer t
;;   :config (cljr-add-keybindings-with-prefix "C-c C-m"))

;; (use-package lispy
;;   :ensure t
;;   :defer t
;;   :init (setq lispy-compat '(cider)))
(put 'narrow-to-region 'disabled nil)

(use-package git-gutter+
  :ensure t
  :config
  (global-git-gutter+-mode))

(use-package company
  :ensure t
  :config
  (setq company-backends '((company-capf company-dabbrev-code company-files)))
  (global-company-mode))

(use-package rainbow-delimiters
  :ensure t
  :config (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

;; (use-package base16-theme
;;   :ensure t
;;   :config
;;   (load-theme 'base16-default-dark t))
;; Set the cursor color based on the evil state
;; (defvar my/base16-colors base16-default-dark-colors)
;; (setq evil-emacs-state-cursor   `(,(plist-get my/base16-colors :base0D) box)
;;       evil-insert-state-cursor  `(,(plist-get my/base16-colors :base0D) bar)
;;       evil-motion-state-cursor  `(,(plist-get my/base16-colors :base0E) box)
;;       evil-normal-state-cursor  `(,(plist-get my/base16-colors :base0B) box)
;;       evil-replace-state-cursor `(,(plist-get my/base16-colors :base08) bar)
;;       evil-visual-state-cursor  `(,(plist-get my/base16-colors :base09) box))

(setq evil-motion-state-cursor  '(box "green"))   ; █
(setq evil-normal-state-cursor  '(box "green"))   ; █
(setq evil-visual-state-cursor  '(box "violet"))  ; █
(setq evil-insert-state-cursor  '(bar "blue"))    ; ⎸
(setq evil-replace-state-cursor '(bar "red"))     ; ⎸
(setq evil-emacs-state-cursor   '(hbar "yellow")) ; _

(when (window-system)
  (set-frame-font "Fira Code 18"))

(let ((alist '((33 . ".\\(?:\\(?:==\\|!!\\)\\|[!=]\\)")
               (35 . ".\\(?:###\\|##\\|_(\\|[#(?[_{]\\)")
               (36 . ".\\(?:>\\)")
               (37 . ".\\(?:\\(?:%%\\)\\|%\\)")
               (38 . ".\\(?:\\(?:&&\\)\\|&\\)")
               (42 . ".\\(?:\\(?:\\*\\*/\\)\\|\\(?:\\*[*/]\\)\\|[*/>]\\)")
               (43 . ".\\(?:\\(?:\\+\\+\\)\\|[+>]\\)")
               (45 . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
               (46 . ".\\(?:\\(?:\\.[.<]\\)\\|[.=-]\\)")
               (47 . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
               (48 . ".\\(?:x[a-zA-Z]\\)")
               (58 . ".\\(?:::\\|[:=]\\)")
               (59 . ".\\(?:;;\\|;\\)")
               (60 . ".\\(?:\\(?:!--\\)\\|\\(?:~~\\|->\\|\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[*$+~/<=>|-]\\)")
               (61 . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
               (62 . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
               (63 . ".\\(?:\\(\\?\\?\\)\\|[:=?]\\)")
               (91 . ".\\(?:]\\)")
               (92 . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
               (94 . ".\\(?:=\\)")
               (119 . ".\\(?:ww\\)")
               (123 . ".\\(?:-\\)")
               (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
               (126 . ".\\(?:~>\\|~~\\|[>=@~-]\\)")
               )
             ))
  (dolist (char-regexp alist)
    (set-char-table-range composition-function-table (car char-regexp)
                          `([,(cdr char-regexp) 0 font-shape-gstring]))))

(use-package company-tern
  :ensure t
  :config (add-to-list 'company-backends 'company-tern)
  (add-hook 'js-mode-hook (lambda ()
                          (tern-mode)
                          (company-mode)))

   (add-hook 'js2-mode-hook (lambda ()
                           (tern-mode)
                           (company-mode)))

   (add-hook 'web-mode-hook (lambda ()
                           (tern-mode)
                           (company-mode)))
)

(use-package js2-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
  (add-hook 'web-mode-hook #'js2-minor-mode)
  (add-hook 'web-mode-hook #'js2-refactor-mode)
  ;; Better imenu
  (add-hook 'js2-mode-hook #'js2-imenu-extras-mode)
)

(use-package js2-refactor
  :ensure t
  :config
  (add-hook 'js2-mode-hook #'js2-refactor-mode)
  (define-key js2-mode-map (kbd "C-k") #'js2r-kill)
  (js2r-add-keybindings-with-prefix "C-c C-r")
)

;; M-. find definition
;; M-, go back after going to definition
;; M-? find usages
(use-package xref-js2
  :ensure t
  :config
    ;; js-mode (which js2 is based on) binds "M-." which conflicts with xref, so
    ;; unbind it.
    (define-key js-mode-map (kbd "M-.") nil)
    (define-key evil-normal-state-map (kbd "M-.") nil)
    (add-hook 'js2-mode-hook (lambda ()
        (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))
    ;; Disable completion keybindings, as we use xref-js2 instead
    (define-key tern-mode-keymap (kbd "M-.") nil)
    (define-key tern-mode-keymap (kbd "M-,") nil)
)

(use-package ivy
  :ensure t
  :config
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t)
    (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
    (global-set-key (kbd "M-x") 'counsel-M-x)
    (global-set-key (kbd "C-c C-r") 'ivy-resume)
    (global-set-key (kbd "C-x C-f") 'counsel-find-file)
    (global-set-key (kbd "<f1> f") 'counsel-describe-function)
    (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
    (global-set-key (kbd "C-s") 'counsel-grep-or-swiper))

;; (use-package centered-window
;;   :ensure t
;;   :config
;;   (centered-window-mode t))

;; (use-package centered-cursor-mode
;;   :ensure t
;;   :config
;;   (global-centered-cursor-mode t))

(use-package markdown-mode+ :ensure t)

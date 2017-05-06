;; https://habrahabr.ru/post/39564/
;; http://www.johndcook.com/blog/emacs_windows/
;; https://ogbe.net/emacsconfig.html
;; http://aaronbedra.com/emacs.d/

;; packages


(load "package")
(package-initialize)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(setq package-archive-enable-alist '(("melpa" deft magit)))

;; set up the load path and package.el
; (require 'package)
; (setq package-archives
;       '(("gnu" . "https://elpa.gnu.org/packages/")
;         ("melpa" . "https://melpa.org/packages/")
;         ("elpy" . "https://jorgenschaefer.github.io/packages/")
;         ("marmalade" . "http://marmalade-repo.org/packages/")
;         ("org" . "http://orgmode.org/elpa/")))
; (package-initialize)


; (load "server")
; (unless (server-running-p) (server-start))

(menu-bar-mode -1)
(when (display-graphic-p)
  (tool-bar-mode -1)
  (scroll-bar-mode -1))

(set-face-attribute 'vertical-border nil :foreground (face-attribute 'fringe :background))

(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(setq initial-scratch-message nil)
(setq initial-buffer-choice "~/")

(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(width . 90))

(setq scroll-step            1
      scroll-conservatively  10000)

(defvar backup-dir (expand-file-name "~/.emacs.d/emacs_backup/"))
(defvar autosave-dir (expand-file-name "~/.emacs.d/autosave/"))
(setq backup-directory-alist (list (cons ".*" backup-dir)))
(setq auto-save-list-file-prefix autosave-dir)
(setq auto-save-file-name-transforms `((".*" ,autosave-dir t)))
(setq tramp-backup-directory-alist backup-directory-alist)
(setq tramp-auto-save-directory autosave-dir)

; (require 'framemove)
; (windmove-default-keybindings)
; (setq framemove-hook-into-windmove t)

(require 'whitespace)
(setq-default show-trailing-whitespace t)


;; "yes or no" vs "y or n"
(defalias 'yes-or-no-p 'y-or-n-p)

(global-visual-line-mode t)

(setq split-height-threshold nil
      split-width-threshold 75)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(global-set-key "\C-cm" 'magit-status)

;;----------------------------------------------------------------------------
;; Rearrange split windows
;;----------------------------------------------------------------------------
;; (global-set-key (kbd "C-x |") 'split-window-horizontally-instead)
;; (global-set-key (kbd "C-x _") 'split-window-vertically-instead)



(defvar my-packages '(better-defaults paredit idle-highlight-mode ido-ubiquitous
                                      find-file-in-project magit smex scpaste scratch))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

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

(setq dired-listing-switches "-alh")

; show matching parentheses
(show-paren-mode)

; use <S-left> <S-right> <S-top> <S-bottom> to navigate splits
(windmove-default-keybindings)

; switch splits using
(global-set-key (kbd "M-p") 'ace-window)

(setq-default indent-tabs-mode nil)


;; ========== Place Backup Files in Specific Directory ==========
;; Enable backup files.
(setq make-backup-files t)
;; Enable versioning with default values (keep five last versions, I think!)
(setq version-control t)
;; Save all backup file in this directory.
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

 ;; ========== Enable Line and Column Numbering ==========
;; Show line-number in the mode line
(line-number-mode 1)
;; Show column-number in the mode line
(column-number-mode 1)

 ;; ========== Set the fill column ==========
(setq-default fill-column 72)

 ;; ===== Turn on Auto Fill mode automatically in all modes =====
;; Auto-fill-mode the the automatic wrapping of lines and insertion of
;; newlines when the cursor goes over the column limit.
;; This should actually turn on auto-fill-mode by default in all major
;; modes. The other way to do this is to turn on the fill for specific modes
;; via hooks.
(setq auto-fill-mode 1)

 ;; ===== Make Text mode the default mode for new buffers =====
(setq default-major-mode 'text-mode)

(mouse-wheel-mode t)

; (evil-mode)

;; ================================================================================================


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
; (package-initialize)

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
    (show-marks scratch magit-popup magit better-defaults ace-window gruvbox-theme evil color-theme-solarized))))



 ;; ===== Function to delete a line =====

;; First define a variable which will store the previous column position
(defvar previous-column nil "Save the column position")

;; Define the nuke-line function. The line is killed, then the newline
;; character is deleted. The column which the cursor was positioned at is then
;; restored. Because the kill-line function is used, the contents deleted can
;; be later restored by usibackward-delete-char-untabifyng the yank commands.
(defun nuke-line()
  "Kill an entire line, including the trailing newline character"
  (interactive)

  ;; Store the current column position, so it can later be restored for a more
  ;; natural feel to the deletion
  (setq previous-column (current-column))

  ;; Now move to the end of the current line
  (end-of-line)

  ;; Test the length of the line. If it is 0, there is no need for a
  ;; kill-line. All that happens in this case is that the new-line character
  ;; is deleted.
  (if (= (current-column) 0)
    (delete-char 1)

    ;; This is the 'else' clause. The current line being deleted is not zero
    ;; in length. First remove the line by moving to its start and then
    ;; killing, followed by deletion of the newline character, and then
    ;; finally restoration of the column position.
    (progn
      (beginning-of-line)
      (kill-line)
      (delete-char 1)
      (move-to-column previous-column))))

;; Now bind the delete line function to the F8 key
(global-set-key [f8] 'nuke-line)


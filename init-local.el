;;; (server-start)

;;; https://github.com/bbatsov/crux

;;; (evil-mode)

(load-theme 'spacemacs-dark)

(require-package 'spaceline)
(require-package 'spaceline-all-icons)
(require-package 'auto-package-update)
(require-package 'helm-descbinds)
(require-package 'helm-describe-modes)

;;; (setq evil-emacs-state-cursor '("red" box))
;;; (setq evil-normal-state-cursor '("green" box))
;;; (setq evil-visual-state-cursor '("orange" box))
;;; (setq evil-insert-state-cursor '("red" bar))
;;; (setq evil-replace-state-cursor '("red" bar))
;;; (setq evil-operator-state-cursor '("red" hollow))

(setq display-time-interval 1)
(setq display-time-format "%H:%M:%S")
(display-time-mode)

(setq sentence-end-double-space nil)

(global-set-key (kbd "M-o") 'other-window)

(global-set-key (kbd "M-h") 'mark-paragraph)

;;; (setq list-matching-lines-default-context-lines 5)

(global-set-key (kbd "M-i") 'imenu)

(global-set-key (kbd "C-^") 'join-line)

(setq-default cursor-type 'bar)

(blink-cursor-mode 0)

;; highlight active line
(global-hl-line-mode 1)

;; higlight changes in documents
(global-highlight-changes-mode t)
(setq highlight-changes-visibility-initial-state nil); initially hide

;; toggle visibility
(global-set-key (kbd "<f6>")      'highlight-changes-visible-mode) ;; changes
;; remove the change-highlight in region
(global-set-key (kbd "S-<f6>")    'highlight-changes-remove-highlight)
;; http://emacs-fu.blogspot.com/2009/05/tracking-changes.html

;;(require 'recentf)
;;(recentf-mode 1)
;;(setq recentf-max-menu-items 25)
;;(global-set-key "\C-x\ \C-r" 'recentf-open-files)
;;; save periodically
;;(run-at-time nil (* 5 60) 'recentf-save-list)

(global-set-key "\C-x\ \C-r" 'helm-recentf)

(require-package 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop)

;;;(setq sml/no-confirm-load-theme t)
;;;(setq sml/theme 'powerline)
;;;(sml/setup)

;;;(require 'telephone-line)
;;;(telephone-line-mode 1)

(require 'spaceline-config)
(spaceline-spacemacs-theme)
(spaceline-helm-mode)
(spaceline-info-mode)

(defun shell-command-on-buffer ()
  "Asks for a command and executes it in inferior shell with current buffer
as input."
  (interactive)
  (shell-command-on-region
   (point-min) (point-max)
   (read-shell-command "Shell command on buffer: ")))

(global-set-key (kbd "M-\\") 'shell-command-on-buffer)

(require-package 'key-chord)
(key-chord-mode 1)
(key-chord-define-global "xx" 'execute-extended-command)

;;;(add-hook 'before-save-hook 'whitespace-cleanup)

(require 'auto-package-update)
(auto-package-update-maybe)
(setq auto-package-update-delete-old-versions t)

;;; ================================================================================
;;; HELM CONFIG
;;; ================================================================================
(require 'helm)
(require 'helm-config)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t
      helm-echo-input-in-header-line t)

(defun spacemacs//helm-hide-minibuffer-maybe ()
  "Hide minibuffer in Helm session if we use the header line as input field."
  (when (with-helm-buffer helm-echo-input-in-header-line)
    (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
      (overlay-put ov 'window (selected-window))
      (overlay-put ov 'face
                   (let ((bg-color (face-background 'default nil)))
                     `(:background ,bg-color :foreground ,bg-color)))
      (setq-local cursor-type nil))))


(add-hook 'helm-minibuffer-set-up-hook
          'spacemacs//helm-hide-minibuffer-maybe)

(setq helm-autoresize-max-height 0)
(setq helm-autoresize-min-height 20)
(helm-autoresize-mode 1)

(helm-mode 1)

(require 'helm-descbinds)
(helm-descbinds-mode)

(require 'helm-describe-modes)
(global-set-key [remap describe-mode] #'helm-describe-modes)
;;; ================================================================================
;;; IDO CONFIG
;;; ================================================================================
(ido-mode 1)
(setq ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point 'guess)
;;; ================================================================================

;;; save on focus lost
(add-hook 'focus-out-hook 'save-buffer)

;;; save all open buffers on focus lost
;;;(add-hook 'focus-out-hook (lambda () (save-some-buffers t)))

(provide 'init-local)

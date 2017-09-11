;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; NOTES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; M-x revert-buffer      // revert a buffer to initial state

;; C-x n n
;;  Narrow down to between point and mark (narrow-to-region).

;; C-x n w
;;  Widen to make the entire buffer accessible again (widen).

;; http://tuhdo.github.io/

;; some stuff taken from
;; http://aaronbedra.com/emacs.d/
;; http://seancribbs.com/emacs.d
;; https://github.com/magnars/.emacs.d/tree/master/settings         // thnx for sane-defaults
;; https://github.com/jeaye/emacs-dotfiles/tree/4ec1fd10effaf41e75413afae5091524f18f346f/config

;; https://sriramkswamy.github.io/dotemacs/

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(package-initialize)

(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

(require 'init-package)
(require 'init-set)
(require 'init-whitespace)
(require 'init-gui)
(require 'init-keybindings)
(require 'init-save)
(require 'init-helm)
(require 'init-modes)
(require 'init-hooks)

;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;; use brew services start emacs instead
;;----------------------------------------------------------------------------
(require 'server)
(unless (server-running-p)
  (server-start))

;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-local" containing personal settings
;;----------------------------------------------------------------------------
(require 'init-local nil t)

(provide 'init)

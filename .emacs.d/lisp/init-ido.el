(use-package ido
  :config
  (ido-mode t)
  (setq ido-enable-prefix nil
        ido-everywhere t
        ido-enable-flex-matching t
        ido-use-virtual-buffers t
        ido-use-filename-at-point 'guess
        ido-create-new-buffer 'always
        ido-max-prospects 10))

(provide 'init-ido)

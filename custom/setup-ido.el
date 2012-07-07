;; Interactively Do Things
;;   Makes find-file (C-x C-f) and find-buffer (C-x b) much better
;;   Stolen from https://github.com/magnars/.emacs.d/blob/master/setup-ido.el

(require 'ido)
(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point nil
      ido-max-prospects 10)

;; Use C-w to go back up a dir to better match normal usage of C-w
;; - insert current file name with C-x C-w instead.
(define-key ido-file-completion-map (kbd "C-w") 'ido-delete-backward-updir)
(define-key ido-file-completion-map (kbd "C-x C-w") 'ido-copy-current-file-name)

;; Always rescan buffer for imenu
(set-default 'imenu-auto-rescan t)

;; Use ido everywhere (really)
(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

(provide 'setup-ido)

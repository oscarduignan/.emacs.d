;; Recreates functionality of surround vim plugin
(add-to-list 'load-path (concat vendor-lisp "evil-surround/"))

(require 'surround)

(global-surround-mode 1)

;; Make # a surround pair, useful for coldfusion
(setq-default surround-pairs-alist (cons '(?# . ("#" . "#"))
                                         surround-pairs-alist))

(provide 'setup-evil-surround)

(add-to-list 'load-path (concat vendor-lisp "emacs-nav-49"))

(require 'nav)

(nav-disable-overeager-window-splitting)

(global-set-key [f8] 'nav-toggle)

(evil-set-initial-state 'nav-mode 'emacs)

;; todo allow j and k keys to navigate up and down files maybe?
;; todo integrate with eproject and IDO mode
;; todo compare the ack to other ack implementations

(provide 'setup-nav)

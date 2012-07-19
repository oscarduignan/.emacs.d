(add-to-list 'load-path (concat vendor-lisp "emacs-nav-49"))

(require 'nav)

(nav-disable-overeager-window-splitting)

(global-set-key [f8] 'nav-toggle)

(evil-set-initial-state 'nav-mode 'emacs)

(provide 'setup-nav)

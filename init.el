(setq on-windows (equal system-type 'windows-nt)
      on-apple (equal system-type 'darwin)
      on-linux (equal system-type 'gnu/linux))

(setq emacs-dir (file-name-directory load-file-name)
      custom-lisp (concat emacs-dir "custom/")
      vendor-lisp (concat emacs-dir "vendor/"))

(add-to-list 'load-path custom-lisp)  
(add-to-list 'load-path vendor-lisp)

;; Implicitly add all folders in vendor/ to the load path
(dolist (project (directory-files vendor-lisp t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

;; Explicitly load all my custom lisp
(require 'setup-appearance)
(require 'setup-behavior)
(require 'setup-ido)
(require 'setup-evil)
(require 'setup-org-mode)
(require 'setup-movement)
(require 'setup-clojure-mode)
(require 'setup-deft)
;;(require 'setup-yasnippets)
(when on-windows
  (require 'setup-windows))

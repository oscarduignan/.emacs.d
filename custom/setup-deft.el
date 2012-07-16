(add-to-list 'load-path (concat vendor-lisp "deft/"))

(when (require 'deft nil 'noerror) 
   (setq
      deft-extension "org"
      deft-directory "~/Dropbox/notes/"
      deft-text-mode 'org-mode)
   (global-set-key (kbd "<f9>") 'deft)
   (evil-set-initial-state 'deft-mode 'emacs))


(provide 'setup-deft)

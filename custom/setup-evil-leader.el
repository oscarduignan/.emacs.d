;; Recreates leader functionality of vim
(add-to-list 'load-path (concat vendor-lisp "evil-leader/"))

(setq evil-leader/leader ","
      evil-leader/in-all-states t)

(require 'evil-leader)

;; Leader keybindings
(evil-leader/set-key
  "n" 'split-window-horizontally
  "," 'toggle-buffer)

(provide 'setup-evil-leader)

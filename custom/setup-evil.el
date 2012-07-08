;; Modal editing for emacs
;; Alot of my config comes from https://github.com/cofi/dotfiles/blob/master/emacs.d/config/cofi-evil.el

(add-to-list 'load-path (concat vendor-lisp "evil/"))

(require 'evil)
(require 'setup-evil-leader)
(require 'setup-evil-surround)

;; Colors to help me recognize what I'm doing
(setq evil-normal-state-tag (propertize "Normal" 'face '((:background "black" :foreground "green")))
      evil-emacs-state-tag (propertize "E" 'face '((:background "orange" :foreground "black")))
      evil-insert-state-tag (propertize "Insert" 'face '((:background "black" :foreground "red")))
      evil-motion-state-tag (propertize "M" 'face '((:background "blue")))
      evil-visual-state-tag (propertize "Visual" 'face '((:background "black" :foreground "grey80")))
      evil-operator-state-tag (propertize "O" 'face '((:background "purple"))))

;; Because I never use ; so make it like :
;; (this will show up in the command line as ; still, if this gets annoying then
;; you can change (if (stringp (this-command-keys)) (this-command-keys) ":") in
;; evil/evil-ex.el to just ":")
(define-key evil-motion-state-map ";" 'evil-ex)

;; Make it so I only have to hit ESC once (rather than 3 times) to quit the minibuffer prompt
(define-key minibuffer-local-map [escape] 'keyboard-escape-quit)

;; Sane movement through wrapped lines (gj and jk)
(define-key evil-motion-state-map "j" 'evil-next-visual-line)
(define-key evil-motion-state-map "k" 'evil-previous-visual-line)

;; Exit insert mode when you type jk or jj
(define-key evil-insert-state-map "j" 'cofi/evil-maybe-exit)
(evil-define-command cofi/evil-maybe-exit ()
  :repeat change
  (interactive)
  (let ((modified (buffer-modified-p))
        (entry-key ?j)
        (exit-keys '(?k ?j)))
    (insert entry-key)
    (let ((evt (read-event (format "Insert %c to exit insert state" (first exit-keys)) nil 0.5)))
      (cond
       ((null evt) (message ""))
       ((and (integerp evt) (member evt exit-keys))
          (delete-char -1)
          (set-buffer-modified-p modified)
          (push 'escape unread-command-events))
       (t (push evt unread-command-events))))))

(evil-mode 1)

(provide 'setup-evil)

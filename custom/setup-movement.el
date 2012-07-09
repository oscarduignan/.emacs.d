;; This some of this will be changed with evil

;; Recreates the toggle buffer functionality
(defun toggle-buffer ()
  (interactive)
  (setq next-toggle-buffer-function
	(if (and (boundp 'next-toggle-buffer-function) 
             (eq next-toggle-buffer-function 'previous-buffer))
	    'next-buffer
	  'previous-buffer))
  (funcall next-toggle-buffer-function))

;; Use the ctrl-direction to change window
(global-set-key [C-left] 'windmove-left)
(global-set-key [C-right] 'windmove-right)
(global-set-key [C-up] 'windmove-up)
(global-set-key [C-down] 'windmove-down)

(provide 'setup-movement)

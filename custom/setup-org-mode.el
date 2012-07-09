;; Normally this would be C-<RET>
(define-key evil-normal-state-map (kbd "<RET>") 'org-insert-heading-respect-content)

(provide 'setup-org-mode)

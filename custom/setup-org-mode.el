;; I don't like inconsistent tag allignment, make it so that tags are just
;; immediately after headings
(setq org-tags-column 0)

;; Make my lists look good by default and have sensible line wrapping
(add-hook 'org-mode-hook
          (lambda ()
            (org-indent-mode t)
            (visual-line-mode t)
          t))

(provide 'setup-org-mode)

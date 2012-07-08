(setq inhibit-startup-message t
      ;; Display row in the mode line
      line-number-mode t
      ;; Display col in the mode line
      column-number-mode t
      ;; Hide the toolbar with icons
      tool-bar-mode 0
      ;; Highligh matching parens
      show-paren-mode t
      ;; Wider line spacing for improved readability
      line-spacing 3)

;; Set font
(set-default-font "Liberation Mono-13")

;; Load theme
(add-to-list 'custom-theme-load-path (concat emacs-dir "themes/"))
(load-theme 'solarized-dark t)

(provide 'setup-appearance)

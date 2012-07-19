(setq inhibit-startup-message t
      ;; Display row in the mode line
      line-number-mode t
      ;; Display col in the mode line
      column-number-mode t
      ;; Wider line spacing for improved readability
      line-spacing 3)

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  ;;(menu-bar-mode -1)
  (tool-bar-mode -1)
  (tooltip-mode -1)
  (blink-cursor-mode -1))

;; Highlight matching and unmatched parens
(show-paren-mode 1)
(setq show-paren-delay 0)

;; Highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#073642") ;; solarized dark = #073642

;; Set font
(set-default-font "Liberation Mono-13")

;; By default avoid truncating lines
(setq-default truncate-lines nil)

;; Load theme
(add-to-list 'custom-theme-load-path (concat emacs-dir "themes/emacs-color-theme-solarized"))
(load-theme 'solarized-dark t)

(provide 'setup-appearance)

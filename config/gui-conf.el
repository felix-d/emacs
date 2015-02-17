
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0eebf69ceadbbcdd747713f2f3f839fe0d4a45bd0d4d9f46145e40878fc9b098" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; show column number and line number
(dolist (mode '(column-number-mode line-number-mode))
  (when (fboundp mode) (funcall mode t)))

(dolist (mode-hook '(text-mode-hook prog-mode-hook conf-mode-hook))
  (add-hook mode-hook
            (lambda ()
              (linum-mode 1))))

;; show parenthesis match
(setq show-paren-style 'expression)

;; Toggle line highlighting in all buffers
(show-paren-mode 1)

;;global highlight
(global-hl-line-mode t)

(if (member "Monaco" (font-family-list))
    (set-face-attribute
     'default nil :font "Monaco 13"))

;; because
(load-theme 'monokai)

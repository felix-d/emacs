
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
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'monokai t)

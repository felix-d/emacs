(require 'smartparens-config)
(smartparens-global-mode)

;; we need to close automatically brackets
(sp-local-pair '(js2-mode web-mode scss-mode) "{" nil :post-handlers '((my-create-newline-and-enter-sexp "RET")))
(sp-local-pair '(js2-mode web-mode) "(" nil :post-handlers '((my-create-newline-and-enter-sexp "RET")))
(sp-local-pair '(js2-mode web-mode) "[" nil :post-handlers '((my-create-newline-and-enter-sexp "RET")))

(defun my-create-newline-and-enter-sexp (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. "
  (newline)
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))


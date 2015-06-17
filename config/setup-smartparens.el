(defun create-newline-and-enter-sexp (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. "
  (previous-line)
  (indent-according-to-mode)
  (forward-line)
  (newline)
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))

(setq sp-autoescape-string-quote nil)
(setq sp-autoskip-closing-pair 'always)
(setq sp-navigate-close-if-unbalanced t)
(smartparens-global-mode t)

;; turn on smartparens-strict-mode on all lisp-like mode
(dolist (sp--lisp-mode-hook
         (mapcar (lambda (x)
                   (intern (concat (symbol-name x) "-hook")))
                 sp--lisp-modes))
  (add-hook sp--lisp-mode-hook
            'smartparens-strict-mode)
  ;; inferior-emacs-lisp-mode-hook is an alias of ielm-mode-hook
  ;; and it will be overrided when you first start ielm
  (add-hook 'ielm-mode-hook
            'smartparens-strict-mode))

;; highlights matching pairs
(show-smartparens-global-mode t)

;; keybinding management
(define-key sp-keymap (kbd "M-s f") 'sp-forward-sexp)
(define-key sp-keymap (kbd "M-s b") 'sp-backward-sexp)

(define-key sp-keymap (kbd "M-s d") 'sp-down-sexp)
(define-key sp-keymap (kbd "M-s D") 'sp-backward-down-sexp)
(define-key sp-keymap (kbd "M-s a") 'sp-beginning-of-sexp)
(define-key sp-keymap (kbd "M-s e") 'sp-end-of-sexp)

(define-key sp-keymap (kbd "M-s u") 'sp-up-sexp)
;; (define-key emacs-lisp-mode-map (kbd ")") 'sp-up-sexp)
(define-key sp-keymap (kbd "M-s U") 'sp-backward-up-sexp)
(define-key sp-keymap (kbd "M-s t") 'sp-transpose-sexp)

(define-key sp-keymap (kbd "M-s n") 'sp-next-sexp)
(define-key sp-keymap (kbd "M-s p") 'sp-previous-sexp)

(define-key sp-keymap (kbd "M-s k") 'sp-kill-sexp)
(define-key sp-keymap (kbd "M-s w") 'sp-copy-sexp)

(define-key sp-keymap (kbd "M-s s") 'sp-forward-slurp-sexp)
(define-key sp-keymap (kbd "M-s r") 'sp-forward-barf-sexp)
(define-key sp-keymap (kbd "M-s S") 'sp-backward-slurp-sexp)
(define-key sp-keymap (kbd "M-s R") 'sp-backward-barf-sexp)
(define-key sp-keymap (kbd "M-s F") 'sp-forward-symbol)
(define-key sp-keymap (kbd "M-s B") 'sp-backward-symbol)

(define-key sp-keymap (kbd "M-s [") 'sp-select-previous-thing)
(define-key sp-keymap (kbd "M-s ]") 'sp-select-next-thing)

(define-key sp-keymap (kbd "M-s M-i") 'sp-splice-sexp)
(define-key sp-keymap (kbd "M-s <delete>") 'sp-splice-sexp-killing-forward)
(define-key sp-keymap (kbd "M-s <backspace>") 'sp-splice-sexp-killing-backward)
(define-key sp-keymap (kbd "M-s M-<backspace>") 'sp-splice-sexp-killing-around)

(define-key sp-keymap (kbd "M-s M-d") 'sp-unwrap-sexp)
(define-key sp-keymap (kbd "M-s M-b") 'sp-backward-unwrap-sexp)

(define-key sp-keymap (kbd "M-s M-t") 'sp-prefix-tag-object)
(define-key sp-keymap (kbd "M-s M-p") 'sp-prefix-pair-object)
(define-key sp-keymap (kbd "M-s M-c") 'sp-convolute-sexp)
(define-key sp-keymap (kbd "M-s M-a") 'sp-absorb-sexp)
(define-key sp-keymap (kbd "M-s M-e") 'sp-emit-sexp)
(define-key sp-keymap (kbd "M-s M-p") 'sp-add-to-previous-sexp)
(define-key sp-keymap (kbd "M-s M-n") 'sp-add-to-next-sexp)
(define-key sp-keymap (kbd "M-s M-j") 'sp-join-sexp)
(define-key sp-keymap (kbd "M-s M-s") 'sp-split-sexp)
(define-key sp-keymap (kbd "M-s M-r") 'sp-raise-sexp)

;; pair management
(sp-local-pair 'minibuffer-inactive-mode "'" nil :actions nil)

;; markdown-mode
(sp-with-modes '(markdown-mode gfm-mode rst-mode)
  (sp-local-pair "*" "*" :bind "C-*")
  (sp-local-tag "2" "**" "**")
  (sp-local-tag "s" "```scheme" "```")
  (sp-local-tag "<"  "<_>" "</_>" :transform 'sp-match-sgml-tags))

;; tex-mode latex-mode
(sp-with-modes '(tex-mode plain-tex-mode latex-mode)
  (sp-local-tag "i" "\"<" "\">"))

;; html-mode
(sp-with-modes '(html-mode web-mode sgml-mode)
  (sp-local-pair "<" ">"))

;; lisp modes
(sp-with-modes sp--lisp-modes
  (sp-local-pair "(" nil :bind "C-("))

(dolist (mode '(c-mode c++-mode java-mode js2-mode sh-mode css-mode))
  (sp-local-pair mode
                 "{"
                 nil
                 :post-handlers
                 '((create-newline-and-enter-sexp "RET"))))

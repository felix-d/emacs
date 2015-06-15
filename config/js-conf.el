;; (add-to-list 'auto-mode-alist '("\\.js\\'"    . js2-mode))
;; (add-to-list 'auto-mode-alist '("\\.pac\\'"   . js2-mode))
;; (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
;;  (when (el-get-package-installed-p 'js2-mode)
;;     (add-hook 'js2-mode-hook (lambda () (tern-mode t))))
;;   (when (el-get-package-installed-p 'js3-mode)
;;     (add-hook 'js3-mode-hook (lambda () (tern-mode t))))
;;   (setq tern-command (cons (executable-find "tern") '()))
;;   (eval-after-load 'tern
;;     '(progn
;;        (require 'tern-auto-complete)
;;        (tern-ac-setup)))
(define-derived-mode jsx2-mode js2-mode "jsx2" "JSX mode based on js2")
 
(add-to-list 'auto-mode-alist '("\\.jsx$" . jsx2-mode))
 
(require 'flycheck)
            
(flycheck-define-checker jsxhint-checker
  "A JSX syntax and style checker based on JSXHint."
 
  :command ("jsxhint" (config-file "--config=" jshint-configuration-path) source)
  :error-patterns ((error line-start (1+ nonl) ": line " line ", col " column ", " (message) line-end))
  :modes (jsx-mode jsx2-mode))
 
(defun find-jshintrc ()
  (expand-file-name ".jshintrc"
                    (locate-dominating-file
                     (or (buffer-file-name) default-directory) ".jshintrc")))
            
 
(defun setup-jsxhint ()
  (setq-local jshint-configuration-path (find-jshintrc))
  (flycheck-select-checker 'jsxhint-checker)
  (flycheck-mode))
 
(add-hook 'jsx2-mode-hook 'setup-jsxhint)
(add-hook 'jsx-mode-hook 'setup-jsxhint)

;; (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
;; (defadvice web-mode-highlight-part (around tweak-jsx activate)
;;   (if (equal web-mode-content-type "jsx")
;;       (let ((web-mode-enable-part-face nil))
;;         ad-do-it)
;;     ad-do-it))

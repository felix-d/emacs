;; Open .js file with js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'"    . js2-mode))

(require 'flycheck)
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))

(flycheck-define-checker jsxhint-checker
  "A JSX syntax and style checker based on JSXHint."

  :command ("jsxhint" source)
  :error-patterns
  ((error line-start (1+ nonl) ": line " line ", col " column ", " (message) line-end))
  :modes (web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (equal web-mode-content-type "jsx")
              ;; enable flycheck
              (flycheck-select-checker 'jsxhint-checker)
              (flycheck-mode))))


;; ;; Create a new mode called jsx2-mode based on js2-mode
;; (define-derived-mode jsx2-mode js2-mode "jsx2" "JSX mode based on js2")
 
;; ;; open jsx file with the new mode
;; (add-to-list 'auto-mode-alist '("\\.jsx$" . jsx2-mode))
            
;; ;; Define a new checker
;; (flycheck-define-checker jsxhint-checker
;;   "A JSX syntax and style checker based on JSXHint."
 
;;   :command ("jsxhint" (config-file "--config=" jshint-configuration-path) source)
;;   :error-patterns ((error line-start (1+ nonl) ": line " line ", col " column ", " (message) line-end))
;;   :modes (jsx-mode jsx2-mode))
 
;; ;; Find .jshintrc file
;; (defun find-jshintrc ()
;;   (expand-file-name ".jshintrc"
;;                     (locate-dominating-file
;;                      (or (buffer-file-name) default-directory) ".jshintrc")))
            
;; ;; Setup jsxhint 
;; (defun setup-jsxhint ()
;;   (setq-local jshint-configuration-path (find-jshintrc))
;;   (flycheck-select-checker 'jsxhint-checker)
;;   (flycheck-mode))
 
;; (add-hook 'jsx2-mode-hook 'setup-jsxhint)
;; (add-hook 'jsx-mode-hook 'setup-jsxhint)

;; (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
;; (defadvice web-mode-highlight-part (around tweak-jsx activate)
;;   (if (equal web-mode-content-type "jsx")
;;       (let ((web-mode-enable-part-face nil))
;;         ad-do-it)
;;     ad-do-it))

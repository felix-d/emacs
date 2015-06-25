;; Enable on-the-fly syntax checking

(require 'flycheck)
(flycheck-define-checker jsxhint-checker
  "A JSX syntax and style checker based on JSXHint."

  :command ("jsxhint" (config-file "--config=" jshint-configuration-path) source)
  :error-patterns
  ((error line-start (1+ nonl) ": line " line ", col " column ", " (message) line-end))
  :modes (web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (equal web-mode-content-type "jsx")
              ;; enable flycheck
              (flycheck-select-checker 'jsxhint-checker)
              (flycheck-mode))))
(if (fboundp 'global-flycheck-mode)
    (global-flycheck-mode +1)
  (add-hook 'prog-mode-hook 'flycheck-mode))

(defun find-jshintrc ()
  (expand-file-name ".jshintrc"
                    (locate-dominating-file
                     (or (buffer-file-name) default-directory) ".jshintrc")))
 
(defun setup-jsxhint ()
  (setq-local jshint-configuration-path (find-jshintrc))
  (flycheck-select-checker 'jsxhint-checker)
  (flycheck-mode))

(add-to-list 'flycheck-checkers 'jsxhint-checker)
(add-hook 'web-mode-hook
          (lambda()
            (when (equal web-mode-content-type "jsx")
              (setup-jsxhint)
              )))

;;; Package --- Summary
;;; Commentary:
;;; Code:

(require 'flycheck)

(add-hook 'after-init-hook 'global-flycheck-mode)

;; Disable jshint
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(javascript-jshint)))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'json-mode)

;; disable json-jsonlist checking for json files
(setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
    '(json-jsonlist)))

;;; setup-flycheck.el ends here

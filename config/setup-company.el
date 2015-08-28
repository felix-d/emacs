;; start company-mode
(add-hook 'after-init-hook 'global-company-mode)

;; config company-mode
(setq company-idle-delay 0.1
      ;; min prefix of 2 chars
      company-minimum-prefix-length 2
      ;; company-selection-wrap-around t
      company-selection-wrap-around t
      company-show-numbers t
      company-dabbrev-downcase nil
      company-transformers '(company-sort-by-occurrence))

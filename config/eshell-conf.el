(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin:/Applications/MAMP/Library/bin:"))
(setq exec-path (append exec-path '("/usr/local/bin")))
(global-set-key (kbd "<f1>") 'term)
(setq eshell-cmpl-ignore-case t)

(defalias 'openf 'find-file)
(defalias 'openfo 'find-file-other-window)

(require 'helm-config)
(setq helm-input-idle-delay 0.2)
(helm-mode t)
(setq helm-locate-command
      (case system-type
        ('gnu/linux "locate -i -r %s")
        ('berkeley-unix "locate -i %s")
        ('windows-nt "es %s")
        ('darwin "mdfind -name %s %s")
        (t "locate %s")))

(global-set-key (kbd "C-x c g") 'helm-do-grep)
(global-set-key (kbd "C-x c o") 'helm-occur)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-x") 'helm-for-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x p") 'helm-projectile)
(global-set-key (kbd "C-x g") 'helm-projectile-grep)

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

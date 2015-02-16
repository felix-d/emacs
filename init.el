(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(ido-mode t)
(setq ido-enable-flex-matching t)

(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

(setq-default indent-tabs-mode nil)
(setq x-select-enable-clipboard t
      x-select-enable-primary t
      save-interprogram-paste-before-kill t
      apropos-do-all t
      mouse-yank-at-point t
      require-final-newline t
      visible-bell nil
      ediff-window-setup-function 'ediff-setup-windows-plain
      save-place-file (concat user-emacs-directory "places")
      backup-directory-alist `(("." . ,(concat user-emacs-directory
					       "backups"))))
(windmove-default-keybindings)
(add-to-list 'load-path "~/.emacs.d/config/")
(load-file "~/.emacs.d/config/evil.el")
(load-file "~/.emacs.d/config/autocomplete.el")
(load-file "~/.emacs.d/config/osx.el")
(load-file "~/.emacs.d/config/helm-conf.el")
(load-file "~/.emacs.d/config/js-conf.el")
(load-file "~/.emacs.d/config/eshell-conf.el")
(load-file "~/.emacs.d/config/web-conf.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0eebf69ceadbbcdd747713f2f3f839fe0d4a45bd0d4d9f46145e40878fc9b098" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; show column number and line number
(dolist (mode '(column-number-mode line-number-mode))
  (when (fboundp mode) (funcall mode t)))

(dolist (mode-hook '(text-mode-hook prog-mode-hook conf-mode-hook))
  (add-hook mode-hook
            (lambda ()
              (linum-mode 1))))

;; make the fringe thinner (default is 8 in pixels)
(fringe-mode 8)

;; show parenthesis match
(setq show-paren-style 'expression)

;; Toggle line highlighting in all buffers
(show-paren-mode 1)
(global-hl-line-mode t)
(if (member "Monaco" (font-family-list))
    (set-face-attribute
     'default nil :font "Monaco 13"))
(load-theme 'monokai)
;; enable on-the-fly syntax checking
(if (fboundp 'global-flycheck-mode)
    (global-flycheck-mode +1)
  (add-hook 'prog-mode-hook 'flycheck-mode))
(projectile-global-mode)
  (setq projectile-enable-caching t)
  (global-set-key (kbd "C-x h") 'helm-projectile)
(setq inhibit-startup-message t)   
(elpy-enable)

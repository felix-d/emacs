;;; init.el --- Emacs configuration file
;;; Commentary: 
;;; The starting configuration file for my Emacs config
;;; Code:

;; We add el-get to load path
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; Add path for custom recipes
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

;; I dont know what the hell is that
(setq el-get-verbose t)

;; list all packages you want installed  
;; those packages will be installed automatically
;; during startup
(setq my-el-get-packages  
      (append  
       '(auto-complete
         evil
         evil-leader
         evil-matchit
         evil-nerd-commenter
         multi-term
         evil-surround
         flycheck
         helm
         smartparens
         window-numbering
         js2-mode
         key-chord
         linum-relative
         pkg-info
         popup
         projectile
         tern
         virtualenvwrapper
         company-mode
         web-mode
         yasnippet
         yasnippet-snippets
         emmet-mode)  
       (mapcar 'el-get-as-symbol
               (mapcar 'el-get-source-name el-get-sources))))

;; We sync all the packages!!!
(el-get 'sync my-el-get-packages)

;; We load some configs
(load-file "~/.emacs.d/config/setup-evil.el")
(load-file "~/.emacs.d/config/setup-gui.el")
(load-file "~/.emacs.d/config/setup-basic.el")
(load-file "~/.emacs.d/config/setup-projectile.el")
(load-file "~/.emacs.d/config/setup-yas.el")
(load-file "~/.emacs.d/config/setup-helm.el")
(load-file "~/.emacs.d/config/setup-js.el")
(load-file "~/.emacs.d/config/setup-web.el")
(load-file "~/.emacs.d/config/setup-smartparens.el")
(load-file "~/.emacs.d/config/setup-flycheck.el")
(load-file "~/.emacs.d/config/setup-company.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-basic-offset 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

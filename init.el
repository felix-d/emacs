(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(setq el-get-verbose t)

;; list all packages you want installed  
(setq my-el-get-packages  
      (append  
       '(auto-complete
         cl-lib
         company-mode
         dash elpy epl
         evil
         evil-leader
         evil-matchit
         evil-nerd-commenter
         evil-surround
         f
         find-file-in-project
         flycheck
         fuzzy
         goto-chg
         helm
         highlight-indentation
         idomenu
         js2-mode
         key-chord
         let-alist
         linum-relative
         monokai-theme
         pkg-info popup
         projectile
         pyvenv
         s
         tern
         undo-tree
         virtualenvwrapper
         web-mode
         paredit
         yasnippet)  
       (mapcar 'el-get-as-symbol
               (mapcar 'el-get-source-name el-get-sources))))


;; We sync all the packages!!!
(el-get 'sync my-el-get-packages)


;;remove menus
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))



;; we load some configs
(load-file "~/.emacs.d/config/evil.el")
(load-file "~/.emacs.d/config/gui-conf.el")
(load-file "~/.emacs.d/config/basic-conf.el")
(load-file "~/.emacs.d/config/autocomplete.el")
(load-file "~/.emacs.d/config/osx.el")
(load-file "~/.emacs.d/config/helm-conf.el")
(load-file "~/.emacs.d/config/js-conf.el")
(load-file "~/.emacs.d/config/eshell-conf.el")
(load-file "~/.emacs.d/config/web-conf.el")

;; enable on-the-fly syntax checking
(if (fboundp 'global-flycheck-mode)
    (global-flycheck-mode +1)
  (add-hook 'prog-mode-hook 'flycheck-mode))

;; Projectile settings
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq inhibit-startup-message t)   
(elpy-enable)

(require 'virtualenvwrapper)
(venv-initialize-eshell) ;; if you want eshell support
(setq venv-location "~/Envs")


(setq web-mode-enable-auto-closing t)
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-auto-quoting nil)


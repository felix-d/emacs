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
         evil
         evil-leader
         evil-matchit
         evil-nerd-commenter
         multi-term
         evil-surround
         flycheck
         helm
         window-numbering
         js2-mode
         key-chord
         linum-relative
         pkg-info
         popup
         projectile
         tern
         virtualenvwrapper
         web-mode
         yasnippet
         yasnippet-snippets
         emmet-mode)  
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
(load-file "~/.emacs.d/config/yas-conf.el")
(load-file "~/.emacs.d/config/autocomplete.el")
(load-file "~/.emacs.d/config/helm-conf.el")
(load-file "~/.emacs.d/config/js-conf.el")
(load-file "~/.emacs.d/config/web-conf.el")

;; enable on-the-fly syntax checking
(if (fboundp 'global-flycheck-mode)
    (global-flycheck-mode +1)
  (add-hook 'prog-mode-hook 'flycheck-mode))

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'web-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
;; Projectile settings
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq inhibit-startup-message t)   
(setq sp-autoescape-string-quote nil)
(electric-pair-mode t)

;; Web mode settings
(setq web-mode-enable-auto-quoting nil)
(setq web-mode-enable-auto-pairing nil) 

;; Fix for issue with apt-get from eshell
(setq projectile-mode-line " Projectile")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(term-unbind-key-list (quote ("C-z" "C-x" "C-c" "C-h" "C-y" "<ESC>" "C-w"))))
(custom-set-faces
 ;; custom-set-faces was added by Custo.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-hook 'term-mode-hook (lambda()
                (yas-minor-mode -1)))
(window-numbering-mode)

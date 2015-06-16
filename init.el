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
(load-file "~/.emacs.d/config/evil.el")
(load-file "~/.emacs.d/config/gui-conf.el")
(load-file "~/.emacs.d/config/basic-conf.el")
(load-file "~/.emacs.d/config/projectile-conf.el")
(load-file "~/.emacs.d/config/yas-conf.el")
(load-file "~/.emacs.d/config/autocomplete.el")
(load-file "~/.emacs.d/config/helm-conf.el")
(load-file "~/.emacs.d/config/js-conf.el")
(load-file "~/.emacs.d/config/web-conf.el")

;; Enable on-the-fly syntax checking
(if (fboundp 'global-flycheck-mode)
    (global-flycheck-mode +1)
  (add-hook 'prog-mode-hook 'flycheck-mode))

;; Emmet mode met let you easily create HTML
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'web-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

;; Lets you switch between windows with M-1, M-2, M-...
(window-numbering-mode)

;; start company-mode
(add-hook 'after-init-hook 'global-company-mode)

;; config company-mode
(setq company-idle-delay 0.2
      ;; min prefix of 2 chars
      company-minimum-prefix-length 2
      company-selection-wrap-around t
      company-show-numbers t
      company-dabbrev-downcase nil
      company-transformers '(company-sort-by-occurrence))

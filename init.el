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
       '(evil
         evil-leader
         evil-matchit
         evil-nerd-commenter
         multi-term
         evil-surround
         flycheck
         helm
         json-mode
         js2-mode
         key-chord
         smartparens
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
(load-file "~/.emacs.d/config/setup-smartparens.el")
(load-file "~/.emacs.d/config/setup-helm.el")
(load-file "~/.emacs.d/config/setup-keybindings.el")
(load-file "~/.emacs.d/config/setup-web.el")
(load-file "~/.emacs.d/config/setup-flycheck.el")
(load-file "~/.emacs.d/config/setup-company.el")


(defun my-create-newline-and-enter-sexp (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. "
  (newline)
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))

(rainbow-delimiters-mode)
(global-set-key (kbd "<f1>") 'multi-term)

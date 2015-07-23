;;; init.el --- Emacs configuration file
;;; Commentary: 
;;; The starting configuration file for my Emacs config
;;; Code:

;;;For mac
(defun set-exec-path-from-shell-PATH ()
  "Set up Emacs' `exec-path' and PATH environment variable to match that used by the user's shell.

This is particularly useful under Mac OSX, where GUI apps are not started from a shell."
  (interactive)
  (let ((path-from-shell (replace-regexp-in-string "[ \t\n]*$" "" (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))
(set-exec-path-from-shell-PATH)

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
         scss-mode
         js2-mode
         key-chord
         smartparens
         linum-relative
         pkg-info
         popup
         projectile
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

(global-set-key (kbd "<f1>") 'multi-term)
(global-auto-revert-mode)

(add-to-list 'grep-find-ignored-directories "dist")
(add-to-list 'grep-find-ignored-directories "node_modules")
(package-initialize)
;;(elpy-enable)

(add-hook 'css-mode-hook
          (lambda()
            (setq css-indent-offset 2)))

(server-start)
 (setq mac-option-modifier 'super)
 (setq mac-command-modifier 'meta)
;;Replace all freakin' ^M chars in the current buffer
(fset 'replace-ctrlms
   [escape ?< escape ?% ?\C-q ?\C-m return ?\C-q ?\C-j return ?!])
(global-set-key "\C-cm" 'replace-ctrlms)
(linum-mode)
;; Use Emacs terminfo, not system terminfo
(setq system-uses-terminfo nil)

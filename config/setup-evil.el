(require 'evil)
(require 'evil-surround)
(require 'key-chord)
(require 'evil-leader)
(require 'evil-nerd-commenter)
(require 'evil-matchit)

(key-chord-mode 1)
(global-evil-surround-mode 1)
(global-evil-leader-mode)
(global-evil-matchit-mode 1)
;; modes to map to different default states
(evil-mode 1)
(loop for (mode . state) in '((inferior-emacs-lisp-mode . emacs)
                              (comint-mode              . emacs)
                              (eshell-mode              . emacs)
                              (term-mode                . emacs)
                              (occur-mode               . normal)
                              (sql-interactive-mode     . emacs))
      do (evil-set-initial-state mode state))
;; We define jk and df to enter normal mode
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)
(key-chord-define evil-insert-state-map  "df" 'evil-normal-state)

;; Evil leader mode
(global-evil-leader-mode)
(evil-leader/set-leader ",")

;; Evil nerd commenter default keys
;; M-; for lines
(evilnc-default-hotkeys)

;; Because we often hit C...
(global-set-key (kbd "C-x C-w") 'other-frame)

(require 'evil)
(require 'evil-surround)
(require 'key-chord)
(require 'evil-leader)
(require 'evil-nerd-commenter)
(require 'evil-matchit)

(evil-mode 1)
(key-chord-mode 1)
(global-evil-surround-mode 1)
(global-evil-leader-mode)
(global-evil-matchit-mode 1)

;; We define jk and df to enter normal mode
(key-chord-define evil-insert-state-map  "jk" 'evil-normal-state)
(key-chord-define evil-insert-state-map  "df" 'evil-normal-state)

;; Evil leader mode
(global-evil-leader-mode)
(evil-leader/set-leader ",")

;; Evil nerd commenter default keys
;; M-; for lines
(evilnc-default-hotkeys)

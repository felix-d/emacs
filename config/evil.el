(require 'evil)
(require 'evil-surround)
(require 'key-chord)
(require 'evil-leader)
(require 'evil-nerd-commenter)
(require 'evil-matchit)

(evil-mode 1)

(mapc
 (lambda (mode-hook)
   (add-hook mode-hook 'turn-off-evil-mode))
 '(info-mode-hook
   eshell-mode-hook))

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

;; eshell mode
(defun eshell-evil-keys ()
  (define-key eshell-mode-map (kbd "C-w =") 'balance-windows)
  (define-key eshell-mode-map (kbd "C-w h") 'windmove-left)
  (define-key eshell-mode-map (kbd "C-w C-h") 'windmove-left)
  (define-key eshell-mode-map (kbd "C-w l") 'windmove-right)
  (define-key eshell-mode-map (kbd "C-w C-l") 'windmove-right)
  (define-key eshell-mode-map (kbd "C-w j") 'windmove-down)
  (define-key eshell-mode-map (kbd "C-w C-j") 'windmove-down)
  (define-key eshell-mode-map (kbd "C-w C-k") 'windmove-up)
  (define-key eshell-mode-map (kbd "C-w k") 'windmove-up)
  (define-key eshell-mode-map (kbd "C-w c") 'delete-window)
  (define-key eshell-mode-map (kbd "C-d") 'bury-buffer))

(add-hook 'eshell-mode-hook 'eshell-evil-keys)


;;--------------------------------------------------------------------
;; ido-mode 
;;--------------------------------------------------------------------

(require 'ido)
(add-hook 'ido-setup-hook 'ido-my-keys)

(defun ido-my-keys ()
 "Add my keybindings for ido."
 (define-key ido-completion-map " " 'ido-next-match)
 (define-key ido-completion-map "\M- " 'ido-next-match)
 (define-key ido-completion-map "\M-n" 'ido-next-match)
 (define-key ido-completion-map "\M-p" 'ido-prev-match)
 )


(ido-mode t)


;;--------------------------------------------------------------------
;; idomenu mode 
;;--------------------------------------------------------------------

;; idomenu功能(快速跳转函数)
(autoload 'idomenu "idomenu" nil t)
(global-set-key (kbd "M-=") 'idomenu)


(provide 'init-ido)

(require 'evil)
(evil-mode t)

;; iBuffer-mode Integration
(add-hook 'ibuffer-mode-hook 
	  '(lambda ()
		 (let ((keymap (current-local-map)))
		   (define-key keymap "j" 'evil-next-line)
		   (define-key keymap "k" 'evil-previous-line)
		   (use-local-map keymap))
		 ))
	
;; moccur-mode Integration
(eval-after-load 'moccur-edit
  '(progn
     ;; use the standard Dired bindings as a base
     (evil-make-overriding-map moccur-mode-map 'normal t)
     (evil-define-key 'normal moccur-mode-map
	   "j" 'moccur-next
	   "k" 'moccur-prev
	   (kbd "RET") 'moccur-quit)
	 ))

  
(provide 'init-evil)

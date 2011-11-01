

(defun ibuffer-fullscreen ()
  "ibufferȫ����ʾ."
  (interactive)
  ;; ���浱ǰ����
  (setq ibuffer-save-current-window-cofigurations (current-window-configuration))
  (ibuffer)
  (delete-other-windows)
  )

(defun ibuffer-visit-buffer-restore-window-configuration ()
  "ibuffer�л�bufferʱ��ԭ����."
  (interactive)
  (ibuffer-visit-buffer)
  (let ((old-buffer (current-buffer)))
	;; ��ԭ���ڲ���
	(set-window-configuration ibuffer-save-current-window-cofigurations)
	;; �л���ibufferѡ�е�buffer
	(switch-to-buffer old-buffer)))



;;--------------------------------------------------------------------
;; iBuffer Hook (FullScreen)
;;--------------------------------------------------------------------
;; (add-hook 'ibuffer-mode-hook 
;; 	  '(lambda ()

;; 		 ;; ���°�RET ���л�bufferʱ��ԭ����
;; 		 (define-key 
;; 		   ibuffer-mode-map (kbd "RET") 
;; 		   'ibuffer-visit-buffer-restore-window-configuration)

;; 		 (ibuffer-auto-mode 1)
;; 	     (ibuffer-switch-to-saved-filter-groups "home")))

;; ;; ���°�ibuffer��������
;; (global-set-key (kbd "C-x C-b") 'ibuffer-fullscreen)

;;--------------------------------------------------------------------
;; iBuffer Hook (Normal)
;;--------------------------------------------------------------------
(add-hook 'ibuffer-mode-hook 
	  '(lambda ()
		 (ibuffer-auto-mode 1)
	     (ibuffer-switch-to-saved-filter-groups "home")
		 ))

;; ���°�ibuffer��������
(global-set-key (kbd "C-x C-b") 'ibuffer)


;;--------------------------------------------------------------------
;; �������� 
;;--------------------------------------------------------------------

(setq ibuffer-expert t)

;; ����ʾ�հ׷���
(setq ibuffer-show-empty-filter-groups nil)

;; ibuffer����
(setq ibuffer-saved-filter-groups
      '(("home"
		 
         ("Game Server" (or (filename . "gameserver")
							(filename . "gamecenter")
							))
		 
         ;; ("Game Center" (filename . "gamecenter"))
         ;; ("Client" (filename . "client"))
         ("Game UI" (filename . "ui"))
		 
		 ("Org" (or (mode . org-mode)
					(filename . "OrgMode")))
		 
		 ("Emacs Lisps" (or (filename . ".emacs.d")
							 (filename . ".emacs")
							 (name . ".el")
							 ))
		 
		 ("Emacs Option" (name . "*"))
		 
		 
		 )))

(setq ibuffer-formats 
	  '((mark modified read-only
			  " " (name 50 50 :left :elide)
			  " " (size 9 -1 :right)
			  " " (mode 16 16 :left :elide) " " filename-and-process)
		(mark " " (name 16 -1) " " filename))
	  )


;;--------------------------------------------------------------------
;; ��ɫ���� 
;;--------------------------------------------------------------------
(defface ibuffer-group-face nil
  ""
  :group 'ibuffer)

(set-face-attribute 'ibuffer-group-face nil :bold t :height 1.65 :foreground "#F1266F")
(setq ibuffer-title-face (quote font-lock-keyword-face))
(setq ibuffer-deletion-face (quote font-lock-constant-face))
(setq ibuffer-filter-group-name-face (quote ibuffer-group-face))

(provide 'init-ibuffer)

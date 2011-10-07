

(defun ibuffer-fullscreen ()
  "ibuffer全屏显示."
  (interactive)
  ;; 保存当前布局
  (setq ibuffer-save-current-window-cofigurations (current-window-configuration))
  (ibuffer)
  (delete-other-windows)
  )

(defun ibuffer-visit-buffer-restore-window-configuration ()
  "ibuffer切换buffer时还原布局."
  (interactive)
  (ibuffer-visit-buffer)
  (let ((old-buffer (current-buffer)))
	;; 还原窗口布局
	(set-window-configuration ibuffer-save-current-window-cofigurations)
	;; 切换到ibuffer选中的buffer
	(switch-to-buffer old-buffer)))



;;--------------------------------------------------------------------
;; iBuffer Hook (FullScreen)
;;--------------------------------------------------------------------
;; (add-hook 'ibuffer-mode-hook 
;; 	  '(lambda ()

;; 		 ;; 重新绑定RET 在切换buffer时还原布局
;; 		 (define-key 
;; 		   ibuffer-mode-map (kbd "RET") 
;; 		   'ibuffer-visit-buffer-restore-window-configuration)

;; 		 (ibuffer-auto-mode 1)
;; 	     (ibuffer-switch-to-saved-filter-groups "home")))

;; ;; 重新绑定ibuffer启动函数
;; (global-set-key (kbd "C-x C-b") 'ibuffer-fullscreen)

;;--------------------------------------------------------------------
;; iBuffer Hook (Normal)
;;--------------------------------------------------------------------
(add-hook 'ibuffer-mode-hook 
	  '(lambda ()
		 (ibuffer-auto-mode 1)
	     (ibuffer-switch-to-saved-filter-groups "home")
		 ))

;; 重新绑定ibuffer启动函数
(global-set-key (kbd "C-x C-b") 'ibuffer)


;;--------------------------------------------------------------------
;; 基本设置 
;;--------------------------------------------------------------------

(setq ibuffer-expert t)

;; 不显示空白分组
(setq ibuffer-show-empty-filter-groups nil)

;; ibuffer分组
(setq ibuffer-saved-filter-groups
      '(("home"
		 
         ("Game Server" (filename . "gameserver"))
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
;; 配色设置 
;;--------------------------------------------------------------------
(defface ibuffer-group-face nil
  ""
  :group 'ibuffer)

(set-face-attribute 'ibuffer-group-face nil :bold t :height 1.65 :foreground "#F1266F")
(setq ibuffer-title-face (quote font-lock-keyword-face))
(setq ibuffer-deletion-face (quote font-lock-constant-face))
(setq ibuffer-filter-group-name-face (quote ibuffer-group-face))

(provide 'init-ibuffer)

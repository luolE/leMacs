;;--------------------------------------------------------------------
;; SR-Spezedbar 
;;--------------------------------------------------------------------
(autoload 'sr-speedbar-toggle "sr-speedbar" nil t)

;; ��speedbar��Ĭ��ΪBuffer��ͼ
(global-set-key [f2] 
				(lambda()
				  (interactive)
				  (sr-speedbar-toggle)
				  ;; Ĭ����ʾquick buffer
				  ;; (speedbar-change-initial-expansion-list "quick buffers")
				  ))

(eval-after-load 'sr-speedbar 
  '(progn
	 ;; ����speedbar��ݼ�
	 (define-key speedbar-key-map "\M-j" 'speedbar-restricted-prev)
	 (define-key speedbar-key-map "\M-l" 'speedbar-restricted-next)

	 (define-key speedbar-key-map "\M-i" 'speedbar-prev)
	 (define-key speedbar-key-map "\M-k" 'speedbar-next)

	 (define-key speedbar-key-map "\M- " 'speedbar-toggle-line-expansion)

	 ;; �����ʾ
	 (setq sr-speedbar-right-side nil)
	 ;; ����
	 (setq speedbar-sort-tags t)
	 ;; ����ʾͼ��
	 (setq speedbar-use-images nil)
	 ;; �Զ�ˢ��
	 (setq sr-speedbar-auto-refresh t)
	 ;; ɾ������
	 (setq sr-speedbar-delete-windows t)
	 ;; ���ÿ��
	 (setq sr-speedbar-max-width 40)
	 (setq speedbar-tag-hierarchy-method '(speedbar-trim-words-tag-hierarchy))
	 ))

;; ;;;;;;;;;;;;;;;;;;; FILE ENDS HERE ;;;;;;;;;;;;;;;;;;;
(provide 'init-sr-speedbar)

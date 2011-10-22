;;--------------------------------------------------------------------
;; SR-Spezedbar 
;;--------------------------------------------------------------------
(autoload 'sr-speedbar-toggle "sr-speedbar" nil t)

;; 让speedbar打开默认为Buffer视图
(global-set-key [f2] 
				(lambda()
				  (interactive)
				  (sr-speedbar-toggle)
				  ;; 默认显示quick buffer
				  ;; (speedbar-change-initial-expansion-list "quick buffers")
				  ))

(eval-after-load 'sr-speedbar 
  '(progn
	 ;; 定义speedbar快捷键
	 (define-key speedbar-key-map "\M-j" 'speedbar-restricted-prev)
	 (define-key speedbar-key-map "\M-l" 'speedbar-restricted-next)

	 (define-key speedbar-key-map "\M-i" 'speedbar-prev)
	 (define-key speedbar-key-map "\M-k" 'speedbar-next)

	 (define-key speedbar-key-map "\M- " 'speedbar-toggle-line-expansion)

	 ;; 左侧显示
	 (setq sr-speedbar-right-side nil)
	 ;; 排序
	 (setq speedbar-sort-tags t)
	 ;; 不显示图标
	 (setq speedbar-use-images nil)
	 ;; 自动刷新
	 (setq sr-speedbar-auto-refresh t)
	 ;; 删除窗口
	 (setq sr-speedbar-delete-windows t)
	 ;; 设置宽度
	 (setq sr-speedbar-max-width 40)
	 (setq speedbar-tag-hierarchy-method '(speedbar-trim-words-tag-hierarchy))
	 ))

;; ;;;;;;;;;;;;;;;;;;; FILE ENDS HERE ;;;;;;;;;;;;;;;;;;;
(provide 'init-sr-speedbar)

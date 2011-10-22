(autoload 'cmake-mode "cmake-mode" nil t)

(setq auto-mode-alist
	  (append '(("CMakeLists\\.txt\\'" . cmake-mode)
				("\\.cmake\\'" . cmake-mode))
			  auto-mode-alist))
;;--------------------------------------------------------------------
;; auto-complete Intergration 
;;--------------------------------------------------------------------
(eval-after-load 'auto-complete
  '(progn
	 ;; ��cmakeģʽ�м���ACģʽ
	 (add-to-list 'ac-modes 'cmake-mode)
	 )
  )

(provide 'init-cmake-mode)

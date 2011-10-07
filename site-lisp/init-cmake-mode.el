(autoload 'cmake-mode "cmake-mode" nil t)

(setq auto-mode-alist
	  (append '(("CMakeLists\\.txt\\'" . cmake-mode)
				("\\.cmake\\'" . cmake-mode))
			  auto-mode-alist))

;; ��cmakeģʽ�м���ac�Զ����
(add-to-list 'ac-modes 'cmake-mode)

(provide 'init-cmake-mode)

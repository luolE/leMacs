(autoload 'cmake-mode "cmake-mode" nil t)

(setq auto-mode-alist
	  (append '(("CMakeLists\\.txt\\'" . cmake-mode)
				("\\.cmake\\'" . cmake-mode))
			  auto-mode-alist))

;; 在cmake模式中加入ac自动完成
(add-to-list 'ac-modes 'cmake-mode)

(provide 'init-cmake-mode)

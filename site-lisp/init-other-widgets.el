

;;--------------------------------------------------------------------
;; htmlize.el (Export Current View To A Html File)
;;--------------------------------------------------------------------
(autoload 'htmlize-file "htmlize" nil t)
(autoload 'htmlize-region "htmlize" nil t)
(autoload 'htmlize-buffer "htmlize" nil t)


;;--------------------------------------------------------------------
;; popup-select-window
;;--------------------------------------------------------------------
(autoload 'popup-select-window "popup-select-window" nil t)
(global-set-key (kbd "M-2") 'popup-select-window)
(let ((keymap (make-sparse-keymap)))
  (set-keymap-parent keymap popup-menu-keymap)
  (define-key keymap (kbd "M-2") 'popup-select-window-next)
  (define-key keymap (kbd "M-n") nil)
  )


;;--------------------------------------------------------------------
;; cn-weather 
;;--------------------------------------------------------------------
(autoload 'cn-weather "cn-weather" nil t)
(setq cn-weather-city "成都")


;;--------------------------------------------------------------------
;; dired-mode 
;;--------------------------------------------------------------------
(setq dired-recursive-deletes t) ; 可以递归的删除目录
(setq dired-recursive-copies t) ; 可以递归的进行拷贝



;; ;;;;;;;;;;;;;;;;;;;;;; FILE ENDS HERE ;;;;;;;;;;;;;;;;;;;;;;;;;;
(provide 'init-other-widgets)

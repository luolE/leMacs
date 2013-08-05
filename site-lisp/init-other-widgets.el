

;;--------------------------------------------------------------------
;; htmlize.el (Export Current View To A Html File)
;;--------------------------------------------------------------------
(autoload 'htmlize-file "htmlize" nil t)
(autoload 'htmlize-region "htmlize" nil t)
(autoload 'htmlize-buffer "htmlize" nil t)



;;--------------------------------------------------------------------
;; cn-weather 
;;--------------------------------------------------------------------
(autoload 'cn-weather "cn-weather" nil t)
(setq cn-weather-city "北京")


;;--------------------------------------------------------------------
;; dired-mode 
;;--------------------------------------------------------------------
(setq dired-recursive-deletes t) ; 可以递归的删除目录
(setq dired-recursive-copies t) ; 可以递归的进行拷贝
(setq ls-lisp-dirs-first t) ; 目录在前面
(setq ls-lisp-verbosity nil) ; 显示内容


;;--------------------------------------------------------------------
;; log-commands 
;;--------------------------------------------------------------------
(autoload 'mwe:log-keyboard-commands "mwe-log-commands" nil t)
(autoload 'mwe:open-command-log-buffer "mwe-log-commands" nil t)

(defun open-current-log-keyboard-command ()
  "Open log keyboard command of current buffer."
  (interactive)
  (mwe:log-keyboard-commands)
  (mwe:open-command-log-buffer)
)

;; ;;;;;;;;;;;;;;;;;;;;;; FILE ENDS HERE ;;;;;;;;;;;;;;;;;;;;;;;;;;
(provide 'init-other-widgets)

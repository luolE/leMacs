

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
(setq cn-weather-city "����")


;;--------------------------------------------------------------------
;; dired-mode 
;;--------------------------------------------------------------------
(setq dired-recursive-deletes t) ; ���Եݹ��ɾ��Ŀ¼
(setq dired-recursive-copies t) ; ���Եݹ�Ľ��п���
(setq ls-lisp-dirs-first t) ; Ŀ¼��ǰ��
(setq ls-lisp-verbosity nil) ; ��ʾ����


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

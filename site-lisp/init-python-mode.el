;; 给Speedb添加ctags支持的扩展类型
(add-hook 'speedbar-mode-hook
  (function
   (lambda ()
     (speedbar-add-supported-extension '(".py"))
     ;; Generate tags for the OCaml mode through imenu (see below) or
     ;; etags interface
     )))

;;--------------------------------------------------------------------
;; flymake-mode
;;--------------------------------------------------------------------
(when (load "flymake" t)
  (defun flymake-pylint-init ()
	(let* ((temp-file (flymake-init-create-temp-buffer-copy
					   'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
	  (list "pyflakes" (list local-file))))
  
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pylint-init)))

(add-hook 'find-file-hook 'flymake-find-file-hook)

;;--------------------------------------------------------------------
;; python-mode 
;;--------------------------------------------------------------------
(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)

(add-hook 'py-mode-hook
          (lambda ()
			(local-set-key (kbd "M-q") 'insert-newline-and-indent)
			(local-set-key (kbd "M-SPC") 'insert-newline-and-indent)
			)
		  )


;;--------------------------------------------------------------------
;; auto-complete Intergration 
;;--------------------------------------------------------------------
(eval-after-load 'auto-complete
  '(progn
	 (add-to-list 'ac-modes 'python-mode)
	 )
  )

(provide 'init-python-mode)

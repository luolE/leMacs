;; 给Speedb添加ctags支持的扩展类型
(add-hook 'speedbar-mode-hook
  (function
   (lambda ()
     (speedbar-add-supported-extension '(".py"))
     ;; Generate tags for the OCaml mode through imenu (see below) or
     ;; etags interface
     )))


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


;;--------------------------------------------------------------------
;; 拷贝代码自动格式化 
;;--------------------------------------------------------------------

(dolist (command '(yank yank-pop))
  (eval
   `(defadvice ,command (after indent-region activate)
      (and (not current-prefix-arg)
           (member major-mode
                   '(emacs-lisp-mode
                     lisp-mode
                     ;; python-mode
                     c-mode
                     c++-mode
                     objc-mode
                     js-mode
					 lua-mode
					 ))
           (let ((mark-even-if-inactive transient-mark-mode))
             (indent-region (region-beginning) (region-end) nil))))))

;; --------------------------------------------------
(provide 'init-indent-after-paste)

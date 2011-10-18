(eval-after-load 'highlight-symbol
  '(progn
	 (defun highlight-symbol-get-symbol ()
	   "redefun."
	   ;; (concat (thing-at-point 'word) "\\_>")
	   (thing-at-point 'word) 
	   )
	 ))

;; ---------- end of init-highlight-symbol.el----------
(provide 'init-highlight-symbol)

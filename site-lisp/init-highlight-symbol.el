;;--------------------------------------------------------------------
;; Highlight-Symbols 
;;--------------------------------------------------------------------
(autoload 'highlight-symbol-mode "highlight-symbol" "" t)
(setq highlight-symbol-idle-delay 1)
(setq highlight-symbol-colors (quote ("red" "yellow" "chartreuse1" "turquoise1" "OrangeRed" "DeepPink")))

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

(autoload 'php-mode "php-mode" "Php editing mode." t)

(add-hook 'php-mode-hook
          (lambda ()
			(auto-complete-mode)
			(hs-minor-mode)
			(turn-on-font-lock)
			(local-set-key (kbd "M-q") 'line-end-with-sem-and-newline-indent)
			(local-set-key (kbd "M-SPC") 'insert-newline-and-indent)

			)
		  )


;;--------------------------------------------------------------------
;; mmm-mode Integraion 
;;--------------------------------------------------------------------
(autoload 'mmm-mode-on "mmm-auto" nil t)
(eval-after-load 'mmm-auto 
  '(progn
	 (mmm-add-classes
	  '((php-in-html
		 :submode php-mode
		 :front "<[%?]"
		 :back "[%?]>")))
	 (mmm-add-classes
	  '((javascript-in-html
		 :submode js-mode
		 :front "<script type=\"text/javascript\""
		 :back "</script>")))
	 ))

(add-hook 'html-mode-hook '(lambda ()
							 (setq mmm-classes '(javascript-in-html) )
							 (set-face-background
							  'mmm-default-submode-face "dim gray")
							 (mmm-mode-on)))
(setq auto-mode-alist (cons '("\\.php$" . html-mode) auto-mode-alist))

;; ;;;;;;;;;;;;;;;;;;;;; FILE ENS HERE ;;;;;;;;;;;;;;;;;;;;;;
(provide 'init-php-mode)

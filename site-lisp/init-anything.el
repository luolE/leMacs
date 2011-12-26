(autoload 'anything "anything" nil t)
(eval-after-load 'anything
  '(progn
	 (require 'anything-config)
	 (setq anything-sources
		   (list anything-c-source-buffers
				 anything-c-source-file-name-history
				 anything-c-source-info-pages
				 anything-c-source-man-pages
				 anything-c-source-file-cache
				 anything-c-source-emacs-commands))
	 ))


;; ;;;;;;;;;;;;;;;;;;;; FILE ENDS HERE ;;;;;;;;;;;;;;;;;;;;
(provide 'init-anything)











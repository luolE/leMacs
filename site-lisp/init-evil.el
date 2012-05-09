(require 'evil)
;;(set evil-toggle-key "C-z")
(evil-mode t)


;;--------------------------------------------------------------------
;; iBuffer-mode Integration
;;--------------------------------------------------------------------
(add-hook 'ibuffer-mode-hook 
	  '(lambda ()
		 (let ((keymap (current-local-map)))
		   (define-key keymap "j" 'evil-next-line)
		   (define-key keymap "k" 'evil-previous-line)
		   (use-local-map keymap))
		 ))
	
;;--------------------------------------------------------------------
;; moccur-mode Integration
;;--------------------------------------------------------------------
(defun moccur-integration ()
  (evil-make-overriding-map moccur-mode-map 'normal t)
  (evil-declare-key 'normal moccur-mode-map
	"j" 'moccur-next
	"k" 'moccur-prev
	(kbd "RET") 'moccur-quit)
  )

(eval-after-load 'moccur-edit
  '(progn
	 (moccur-integration)
	 (add-hook 'moccur-mode-hook 'moccur-integration)
	 ))


;;--------------------------------------------------------------------
;; Redefun evil-find-symbol (by word) 
;;--------------------------------------------------------------------
(eval-after-load 'evil-search
  '(progn
	 (defun evil-find-symbol (forward)
	   "redefun."
	   (let ((move (if forward 'forward-char 'backward-char))
			 (end (if forward 'eobp 'bobp))
			 string)
		 (save-excursion
		   (setq string (thing-at-point 'word))
		   ;; if there's nothing under point, go forwards
		   ;; (or backwards) to find it
		   (while (and (null string) (not (funcall end)))
			 (funcall move)
			 (setq string (thing-at-point 'word)))
		   (when (stringp string)
			 (set-text-properties 0 (length string) nil string))
		   (when (> (length string) 0)
			 string))))
	 
	 (defun evil-search-symbol (forward)
	   "redefun"
	   (let ((string (car-safe regexp-search-ring))
			 (move (if forward 'forward-char 'backward-char))
			 (end (if forward 'eobp 'bobp)))
		 (setq isearch-forward forward)
		 (cond
		  ((and (memq last-command
					  '(evil-search-symbol-forward
						evil-search-symbol-backward))
				(stringp string)
				(not (string= string "")))
		   (evil-search string forward evil-search-wrap))
		  (t
		   (setq string (evil-find-symbol forward))
		   (if (null string)
			   (error "No symbol under point")
			 (setq string (format "%s" (regexp-quote string))))
			 ;; (setq string (format "%s\\_>" (regexp-quote string))))
		   (evil-search string forward evil-search-wrap)))))
	 ))


;--------------End Of init-evil.el--------------
(provide 'init-evil)

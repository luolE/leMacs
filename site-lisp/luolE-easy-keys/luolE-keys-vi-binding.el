(require 'luolE-keys-func)

(defun change-movepos-keys-to-vi ()
  "rebinding cursor movement keys to M-j,k,l,i"
  (interactive)
  (global-set-key (kbd "M-b") 'backward-word)
  (global-set-key (kbd "M-j") 'next-line)
  (global-set-key (kbd "M-w") 'forward-word)
  (global-set-key (kbd "M-k") 'previous-line)
  (global-set-key (kbd "M-h") 'backward-char)
  (global-set-key (kbd "M-l") 'forward-char)
  (global-set-key (kbd "C-f") 'forward-page)
  (global-set-key (kbd "C-b") 'backward-page)
  
  ;;delete word without kill ring
  (global-set-key (kbd "C-d") 'delete-char)
  (global-set-key (kbd "M-d") 'delete-cur-word-or-cut-region)
  (define-key global-map [C-backspace] 'delete-backward-word-without-kill-ring)
)

(defun change-other-key-binding ()
  (interactive)

  (define-key global-map (kbd "M-f") 'wy-go-to-char)

  (global-set-key (kbd "M-n") 'scroll-up)
  (global-set-key (kbd "M-p") 'scroll-down)

  (global-set-key (kbd "C-M-n") 'scroll-other-window)
  (global-set-key (kbd "C-M-p") 'scroll-other-window-down)
  
  ;;new-line
  (global-set-key (kbd "M-SPC") 'insert-newline-and-indent)
  (global-set-key (kbd "C-o") 'my-get-col-word-prev-line)

  ;; goto-line
  (global-set-key (kbd "M-g") 'goto-line)

  ;;New Comment Method
  (global-set-key "\M-;" 'qiang-comment-dwim-line)
  
  ;;Tranlate M-RET to RET
  ;; (define-key key-translation-map (kbd "M-RET")  [13]) 

  ;; next symbol
  (global-set-key (kbd "M-`") 'forward-separator)
  
  (global-set-key (kbd "M-c") 'backward-capitalize-word)
  (global-set-key (kbd "M-C") 'backward-upcase-word)

  ;; 设置Shift+鼠标左键 为Windows习惯的扩充选择区域功能
  (global-unset-key [S-down-mouse-1] )
  (global-set-key [S-mouse-1]
  				  (lambda (event)
  					(interactive "e")
  					(push-mark (if mark-active
  								   (if (= (point) (region-beginning))
  									   (region-end)
  									 (region-beginning))
  								 (point))
  							   t t)
  					(goto-char (posn-point (event-end event)))))
  )

(progn
  (change-movepos-keys-to-vi)
  (change-other-key-binding)
  (change-windows-control-keys)
  )
;; ------------------------------------------------------------

(provide 'luolE-keys-vi-binding)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; luolE-keys-func.el ends here

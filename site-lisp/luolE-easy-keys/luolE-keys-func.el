
(defun kill-current-buffer ()
  (interactive)
  (kill-buffer (current-buffer))
  )

(defun copy-current-buffername-to-killring ()
  (interactive)
  (kill-new (buffer-name (current-buffer)))
  (message (buffer-file-name (current-buffer)))
  )

(defun wy-go-to-char (n char)
  "Move forward to Nth occurence of CHAR.
Typing `wy-go-to-char-key' again will move forwad to the next Nth
occurence of CHAR."
  (interactive "p\ncGo to char: ")
  (search-forward (string char) nil nil n)
  (while (char-equal (read-char)
					 char)
    (search-forward (string char) nil nil n))
  (setq unread-command-events (list last-input-event)))

(defun delete-cur-word-without-kill-ring()
  "Delete current word and do not put it in kill ring. "
  (interactive)
  (let ((start-pos (point)))
	(forward-word 1)
	(delete-region start-pos (point))
	)
  )

(defun delete-cur-word-or-cut-region ()
  "Delete current word or cut region if mark-actived."
  (interactive)
  (if mark-active
	  (call-interactively 'cua-cut-region)
	(delete-cur-word-without-kill-ring)))


(defun delete-backward-word-without-kill-ring()
  "Delete backward  word and do not put it in kill ring. "
  (interactive)
  (progn 
    (mark-word (- 1))
    (delete-region (region-beginning) (region-end))))


(defun delete-cur-word-in-mid-word()
  "Delete current word in mid of the word.
And do not put it in kill ring. "
  (interactive)
  (progn 
    (backward-word (- 1))
    (forward-word (- 1))
    (mark-word)
    (delete-region (region-beginning) (region-end))))


(defun delete-cur-line-in-anypos()
  "Delete current line in mid of the line."
  (interactive)
  (progn 
	(move-beginning-of-line 1)
	(kill-line 1)))


(defun insert-newline-and-indent ()
  "And a newline below current line and indent."
  (interactive)
  (move-end-of-line 1)
  (newline-and-indent))


;;--------------------------------------------------------------------
;; 在行末尾添加结束符并换行缩进 
;;--------------------------------------------------------------------

(defun my-array-all-zero-p (arr) 
  (let ((r t)
		(i 0)
		(len (length arr)))
	(while (and r (< i len))
	  (unless (equal (aref arr i) 0)
		(setq r nil))
	  (setq i (1+ i)))
	r))

(defvar my-pairs '(("(" . ")")
                   ("[" . "]")
                   ("{" . "}")))

(defun my-check-pairs (beg end)
  (let ((cnts (make-vector (length my-pairs) 0))
        (len (length my-pairs))
        c i)
    (save-excursion
      (goto-char beg)
      (while (< beg end)
        (setq c (char-after))
        (setq i 0)
        (dolist (p my-pairs)
          (cond
           ((char-equal c (string-to-char (car p)))
            (aset cnts i (1+ (aref cnts i))))
           ((char-equal c (string-to-char (cdr p)))
            (aset cnts i (1- (aref cnts i)))))
          (setq i (1+ i)))
        (setq beg (1+ beg))
        (forward-char 1)))
     (my-array-all-zero-p cnts) ))

;; (my-check-pairs (point-min) (point))

(defun line-end-with-sem-and-newline-indent-ex ()
  "自动在行末尾添加符号(根据上下文)然后换行缩进"
  (interactive)
  (if (or (string-match ".*[;,][\t\s]*$"	;是否已经有分号
                    (buffer-substring-no-properties
                     (point-at-bol)
                     (point-at-eol)))
		  (save-excursion				;空行不加分号
			(back-to-indentation)
			(eolp)
			))
	  (progn
		(insert-newline-and-indent))
	(progn
	  (end-of-line)
	  (if (my-check-pairs (save-excursion
							(or (re-search-backward "function" nil t ) 1))
						  (point))
		  
		  (insert ";")
		(insert ",")))))




(defun line-end-with-sem-and-newline-indent ()
  "自动在行末尾添加分号然后换行缩进"
  (interactive)
  (if (string-match ".*;[\t\s]*$"
                    (buffer-substring-no-properties
                     (point-at-bol)
                     (point-at-eol)))
	  (progn
		(insert-newline-and-indent))
	(progn
	  (end-of-line) 
	  (insert ";")
	  )))

;;--------------------------------------------------------------------


(defun kill-except-this-buffers ()
  "删除除了当前 buffer 外的所有 buffers"
  (interactive)
  (setq buffers (buffer-list))
  (setq this-buffer (current-buffer))
  (while buffers
    (setq i (car buffers))
    (setq buffers (cdr buffers))
    (message "deleting %s..." (buffer-name i))
    (unless (eq this-buffer i)
      (kill-buffer i))))

(defun forward-separator ()
  "移动到下一个分隔符后面."
  (interactive)
  (search-forward-regexp " +\\|[],'\"{}()[]")
  )

(defun backward-capitalize-word ()
  "让前一个单词首字母大写."
  (interactive)
  (backward-word 1)
  (capitalize-word 1)
  )

(defun backward-upcase-word ()
  "让前一个单词全部大写."
  (interactive)
  (let ((old-point (point)))
	(backward-word 1)
	(while (< (point) old-point)
	  (upcase-word 1))))

(defun mark-line ()
  "一次选取一整行"
  (interactive)
  (if (not mark-active)
      (progn
        (beginning-of-line)
        (push-mark (point) t t)
		(forward-line 1)
		(move-beginning-of-line 1) 
		)
    (let ((b (region-beginning)))
      (push-mark b t t)
      (forward-line 1)
	  (move-beginning-of-line 1) 
      )))

;;--------------------------------------------------
;; 获取前一行当前位置的一个词  code by:黄昏
;;--------------------------------------------------

(defun my-get-prev-not-empty-line ()
  (let ((point-save (point))
        (line))
    (while (and (> (line-number-at-pos) 1)
                (not line))
      (forward-line -1)
      (beginning-of-line)
      (unless (string-match "^[ \t]*$" (buffer-substring-no-properties
                                        (line-beginning-position)
                                        (line-end-position)))
        (setq line (line-number-at-pos))))
    (goto-char point-save)
    line))

(defun my-something-at-point ()
  (let ((point-save (point))
        (word-end)
        (res))
    (forward-word)
    (setq word-end (point))
    (goto-char point-save)
    (when (> word-end (point))
      (setq res (buffer-substring (point)
                                  (if (< (line-end-position)
                                         word-end)
                                      (line-end-position)
                                    word-end))))
    res))

(defun my-get-col-word-prev-line ()
  "获取前一行当前位置的一个词"
  (interactive)
  (let ((line (my-get-prev-not-empty-line))
        (point-save (point))
        (col (current-column))
        (res))
    (when line
      (goto-line line)
      (beginning-of-line)
      ;; fixed tab width problem.
      ;; ========================
      ;; TAB this is the test line
      ;; ^
      (while (and (not res)
                  (not (eolp)))
        (if (>= (current-column) col)
            (setq res (my-something-at-point))
          (forward-char 1)))
      (goto-char point-save)
      (when res
        (insert res)
        t))))

(defun toggle-window-split ()
  "改变窗口的分割状态(水平->锤子->水平)."
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and (<= (car this-win-edges)
                                         (car next-win-edges))
                                     (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if this-win-2nd (other-window 1))
          (set-window-buffer (selected-window) this-win-buffer)
          (set-window-buffer (next-window) next-win-buffer)
          (select-window first-win)
          (if this-win-2nd (other-window 1))))))

;;--------------------------------------------------

(defun luolE-mark-char (&optional arg allow-extend)
  "Mark Char."
  (interactive "P\np")
  (cond ((and allow-extend
	      (or (and (eq last-command this-command) (mark t))
		  (region-active-p)))
	 (setq arg (if arg (prefix-numeric-value arg)
		     (if (< (mark) (point)) -1 1)))
	 (set-mark
	  (save-excursion
	    (goto-char (mark))
	    (forward-char arg)
	    (point))))
	(t
	 (push-mark
	  (save-excursion
	    (forward-char (prefix-numeric-value arg))
	    (point))
	  nil t))))

(defun qiang-comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command.
If no region is selected and current line is not blank and we are not at the end of the line,
then comment current line.
Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))

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
  
  ;; next symbol
  (global-set-key (kbd "M-`") 'forward-separator)
  
  (global-set-key (kbd "M-c") 'backward-capitalize-word)
  (global-set-key (kbd "M-C") 'backward-upcase-word)

  ;; 设置Shift+鼠标左键 为Windows习惯的扩充选择区域功能
 (define-key global-map (kbd "<S-down-mouse-1>") 'ignore) ; turn off font dialog
 (define-key global-map (kbd "<S-mouse-1>") 'mouse-set-point)
 (put 'mouse-set-point 'CUA 'move)
  )


(defun change-windows-control-keys ()
  "Define new windows contorl keys."
  (interactive)
  (global-set-key (kbd "M-1") 'delete-other-windows)					;最大化当前窗口
  (global-set-key (kbd "M-2") 'other-window)							;移动窗口
  (global-set-key (kbd "M-3") 'split-window-horizontally)				;垂直分割窗口
  (global-set-key (kbd "M-4") 'kill-current-buffer)						;删除当前Buffer
  (global-set-key (kbd "M-5") 'copy-current-buffername-to-killring)		;显示Buffer名字
  (global-set-key (kbd "M-9") 'kill-except-this-buffers)				;删除所有其他窗口
  (global-set-key (kbd "M-0") 'other-window)							;切换窗口
  )


;; ------------------------------------------------------------

(provide 'luolE-keys-func)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-luolE-keys-func.el ends here

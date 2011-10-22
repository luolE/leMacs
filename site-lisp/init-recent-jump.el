;;光标坐标记录
(autoload 'recent-jump-jump-forward "recent-jump" nil t)
(autoload 'recent-jump-jump-backward "recent-jump" nil t)

(setq recent-jump-hook-commands 
	  '(next-line  
		previous-line 
		isearch-forward 
		isearch-backward 
		end-of-buffer 
		beginning-of-buffer 
		pager-page-down 
		pager-page-up 
		beginning-of-defun 
		end-of-defun 
		forward-word 
		backward-word 
		forward-sexp 
		backward-sexp 
		scroll-up 
		scroll-down 
		find-tag 
		mark-whole-buffer 
		switch-to-buffer 
		ido-switch-buffer
		idomenu
		imenu 
		evil-next-line
		evil-previous-line
		evil-forward-word-begin
		evil-backward-word-end
		evil-scroll-page-up
		evil-scroll-page-down
		moccur
		moccur-grep
		moccur-grep-find
		luolE-forward-word
		luolE-backward-word
		)) 

;; 记录光标移动的最新范围
(setq recent-jump-threshold 3)

(global-set-key (kbd "C--") 'recent-jump-jump-backward)
(global-set-key (kbd "C-_") 'recent-jump-jump-forward)

(provide 'init-recent-jump)

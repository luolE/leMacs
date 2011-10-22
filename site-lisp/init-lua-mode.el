;; 给Speedb添加ctags支持的扩展类型
(add-hook 'speedbar-mode-hook
  (function
   (lambda ()
     (speedbar-add-supported-extension '(".lua"))
     ;; Generate tags for the OCaml mode through imenu (see below) or
     ;; etags interface
     )))


(require 'align)
;; 在Lua模式中支持Align
(add-to-list 'align-c++-modes 'lua-mode)
(add-to-list 'align-sq-string-modes 'lua-mode)
(add-to-list 'align-open-comment-modes 'lua-mode)

;;--------------------------------------------------------------------
;; Flymake-Lua 
;;--------------------------------------------------------------------
(autoload 'flymake-lua-load "flymake-lua" nil t)
(add-hook 'lua-mode-hook 'flymake-lua-load)

;;--------------------------------------------------------------------
;; Lua-mode 
;;--------------------------------------------------------------------
(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)

(defun lua-sned-buffer-with-emacs-enviroment()
  "thisandthat."
  (interactive)
  (or (and lua-process
		   (comint-check-proc lua-process-buffer))
	  (lua-start-process lua-default-application))
  ;; kill lua process without query
  (if (fboundp 'process-kill-without-query) 
	  (process-kill-without-query lua-process)) 
  (with-current-buffer lua-process-buffer 
	(comint-simple-send (get-buffer-process (current-buffer))
						"EMACS = 1;EMACS_LUA = 1;EMACS_LUA_ENVIROMENT = 1;")
	(comint-simple-send (get-buffer-process (current-buffer))
						"print(); print \'Emacs Lua-Mode Enviroment set complete!\\n\\n\';")
	)
  
  (lua-send-buffer)
)

(add-hook 'lua-mode-hook
          (lambda ()
			(setq lua-indent-level 4)
			(auto-complete-mode)
			(hs-minor-mode)
			(turn-on-font-lock)
			(local-set-key [f5] 'lua-sned-buffer-with-emacs-enviroment)
		    ;; 在行末尾添加";"号并换行缩进
			(local-set-key (kbd "M-q") 'line-end-with-sem-and-newline-indent-ex)
			(local-set-key (kbd "M-SPC") 'insert-newline-and-indent)
			(highlight-symbol-mode t)
			)
		  )


;;--------------------------------------------------------------------
;; auto-complete Intergration 
;;--------------------------------------------------------------------
(eval-after-load 'auto-complete
  '(progn
	 ;; 在Lua模式中加入AC模式
	 (add-to-list 'ac-modes 'lua-mode)
	 )
  )

(provide 'init-lua-mode)

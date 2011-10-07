;;--------------------------------------------------------------------
;; 定义Astyle函数 
;;--------------------------------------------------------------------
(defun astyle-this-buffer (pmin pmax)  (interactive "r")  
  (shell-command-on-region pmin pmax                          
						   "astyle -u -K -M -m -f -w -p -c -s4" ;; add options here...
						   (current-buffer) t                      
						   (get-buffer-create "*Astyle Errors*") t))


;;--------------------------------------------------------------------
;; C/C++ 代码风格设置 
;;--------------------------------------------------------------------
(defun luolE-c-mode-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  (c-set-style "k&r")
  ;; 自动换行
  (c-toggle-auto-newline -1)
  ;; 贪心删除
  (c-toggle-hungry-state 1)
  ;; 缩进宽度
  (setq c-basic-offset 4)
  ;; 在行末尾添加";"号并换行缩进
  (local-set-key (kbd "M-q") 'line-end-with-sem-and-newline-indent)
  (local-set-key (kbd "M-SPC") 'insert-newline-and-indent)
  )

(add-hook 'c-mode-common-hook 'luolE-c-mode-hook)
(add-hook 'c++-mode-common-hook 'luolE-c-mode-hook)
(setq auto-mode-alist (cons '("\\.h$" . c++-mode) auto-mode-alist))

;;--------------------------------------------------------------------
;; 编译器设置 
;;--------------------------------------------------------------------
(setq compiler-path (concat "d:/sdks/MinGW/bin/"))
(setq compile-command-gcc (concat compiler-path "gcc -Wall -o")) 
(setq compile-command-g++ (concat compiler-path "g++ -Wall -o"))

(global-set-key (kbd "<f9>") 'smart-compile)
(defun smart-compile()

  ;;比较智能的C/C++编译命令
  ;;如果当前目录有makefile则用make -k编译，否则，如果是
  ;;处于c-mode，就用gcc -Wall编译，如果是c++-mode就用 g++ -Wall编译"
  (interactive)
  ;; 查找 Makefile
  (let ((candidate-make-file-name '("makefile" "Makefile" "GNUmakefile"))
        (command nil))
    (if (not (null
              (find t candidate-make-file-name :key
                    '(lambda (f) (file-readable-p f)))))
        (setq command "make -k ")
	  ;; 没有找到 Makefile ，查看当前 mode 是否是已知的可编译的模式
	  (if (null (buffer-file-name (current-buffer)))
		  (message "Buffer not attached to a file, won't compile!")
		(if (eq major-mode 'c-mode)
			(setq command
				  (concat compile-command-gcc  
						  (file-name-sans-extension (file-name-nondirectory buffer-file-name)) 
						  " "
						  (file-name-nondirectory buffer-file-name)
						  " -g -lm "))
		  (if (eq major-mode 'c++-mode)
			  (setq command
					(concat compile-command-g++ 
							(file-name-sans-extension
							 (file-name-nondirectory buffer-file-name))
							" "
							(file-name-nondirectory buffer-file-name)
							" -g -lm "))
			(message "Unknow mode, won't compile!")))))
    (if (not (null command))
        (let ((command (read-from-minibuffer "Compile command: " command)))
          (compile command)))))


(provide 'init-c-cpp-mode)

;;--------------------------------------------------------------------
;; ����Astyle���� 
;;--------------------------------------------------------------------
(defun astyle-this-buffer (pmin pmax)  (interactive "r")  
  (shell-command-on-region pmin pmax                          
						   "astyle -u -K -M -m -f -w -p -c -s4" ;; add options here...
						   (current-buffer) t                      
						   (get-buffer-create "*Astyle Errors*") t))


;;--------------------------------------------------------------------
;; C/C++ ���������� 
;;--------------------------------------------------------------------
(defun luolE-c-mode-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  (c-set-style "k&r")
  ;; �Զ�����
  (c-toggle-auto-newline -1)
  ;; ̰��ɾ��
  (c-toggle-hungry-state 1)
  ;; �������
  (setq c-basic-offset 4)
  ;; ����ĩβ���";"�Ų���������
  (local-set-key (kbd "M-q") 'line-end-with-sem-and-newline-indent)
  (local-set-key (kbd "M-SPC") 'insert-newline-and-indent)
  )

(add-hook 'c-mode-common-hook 'luolE-c-mode-hook)
(add-hook 'c++-mode-common-hook 'luolE-c-mode-hook)
(setq auto-mode-alist (cons '("\\.h$" . c++-mode) auto-mode-alist))

;;--------------------------------------------------------------------
;; ���������� 
;;--------------------------------------------------------------------
(setq compiler-path (concat "d:/sdks/MinGW/bin/"))
(setq compile-command-gcc (concat compiler-path "gcc -Wall -o")) 
(setq compile-command-g++ (concat compiler-path "g++ -Wall -o"))

(global-set-key (kbd "<f9>") 'smart-compile)
(defun smart-compile()

  ;;�Ƚ����ܵ�C/C++��������
  ;;�����ǰĿ¼��makefile����make -k���룬���������
  ;;����c-mode������gcc -Wall���룬�����c++-mode���� g++ -Wall����"
  (interactive)
  ;; ���� Makefile
  (let ((candidate-make-file-name '("makefile" "Makefile" "GNUmakefile"))
        (command nil))
    (if (not (null
              (find t candidate-make-file-name :key
                    '(lambda (f) (file-readable-p f)))))
        (setq command "make -k ")
	  ;; û���ҵ� Makefile ���鿴��ǰ mode �Ƿ�����֪�Ŀɱ����ģʽ
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

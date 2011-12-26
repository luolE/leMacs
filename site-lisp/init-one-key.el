(require 'one-key)
(require 'init-one-key-dir)

(defvar one-key-menu-luolE-main-alist nil
  "`One-Key' menu list for luolE.")

(setq one-key-menu-luolE-main-alist
      '(
		(("a" . "Anything-Mode") . (lambda() (interactive) (anything)))
		(("d" . "目录") . one-key-menu-luolE-dir)
		(("e" . "配置") . one-key-menu-luolE-config)
		(("s" . "搜索") . one-key-menu-luolE-search)
		(("f" . "文件") . one-key-menu-luolE-file)
		(("d" . "从中删除单词") . delete-cur-word-without-kill-ring)
		(("h" . "高亮当前单词") . highlight-symbol-at-point)
		(("w" . "天气预报") . (lambda () (interactive) ( cn-weather)  ))
		(("b" . "缓冲区列表") . (lambda () (interactive) (ibuffer)))
		(("t" . "Tags信息") . one-key-menu-luolE-tags)
		(("q" . "退出emacs") . (lambda () (interactive) (save-buffers-kill-terminal)))
        ))

(defun one-key-menu-luolE-main ()
  "."
  (interactive)
  (one-key-menu "luolE" one-key-menu-luolE-main-alist t))

;;-------------------------------------------------------------------------
(defvar one-key-menu-luolE-config-alist nil
  "`One-Key' menu list for luolE.")

(setq one-key-menu-luolE-config-alist
      '(
		(("e" . ".EMACS 配置") . 
		 (lambda () 
		   (interactive) 
		   (find-file "~/.emacs")))

		(("q" . "One-Key 菜单配置") . 
		 (lambda () 
		   (interactive) 
		   (find-file "~/site-lisp/init-one-key.el")  ))
		
		(("c" . "修改主题配置") .
		 (lambda () 
		   (interactive) 
		   (find-file "~/site-lisp/init-color-theme.el" )  ))
		
		(("1" . "修改luolE自定义功能") .
		 (lambda () 
		   (interactive) 
		   (find-file "~/site-lisp/init-luolE-easy-keys.el" )  ))

		(("d" . "luolE配置文件夹") .
		 (lambda () 
		   (interactive) 
		   (dired "~/site-lisp/") ))


        ))

(defun one-key-menu-luolE-config ()
  "."
  (interactive)
  (one-key-menu "luolE" one-key-menu-luolE-config-alist t))

;;-------------------------------------------------------------------------
(defvar one-key-menu-luolE-search-alist nil
  "`One-Key' menu list for luolE.")

(setq one-key-menu-luolE-search-alist
      '(
		(("f" . "搜索当前文档") . 
		 (lambda () 
		   (interactive)
		   (command-execute 'moccur)
		   ))
		

		(("d" . "搜索当前目录") . 
		 (lambda () 
		   (interactive)
		   (command-execute 'moccur-grep-find)
		   ))
		
        ))

(defun one-key-menu-luolE-search ()
  "."
  (interactive)
  (one-key-menu "luolE" one-key-menu-luolE-search-alist t))
;;-------------------------------------------------------------------------
(defvar one-key-menu-luolE-file-alist nil
  "`One-Key' menu list for luolE.")

(setq one-key-menu-luolE-file-alist
      '(
		(("c" . "改变当前文件编码格式") . 
		 (lambda () 
		   (interactive)
		   (command-execute 'revert-buffer-with-coding-system)))
		
        ))

(defun one-key-menu-luolE-file ()
  "."
  (interactive)
  (one-key-menu "luolE" one-key-menu-luolE-file-alist t))

;;-------------------------------------------------------------------------
(defvar one-key-menu-luolE-tags-alist nil
  "`One-Key' menu list for luolE.")

(setq one-key-menu-luolE-tags-alist
      '(
		(("w" . "生成并使用GameServer脚本Tags信息") . 
		 (lambda () 
		   (interactive)
		   (shell-command "D:/adin.works/mj_src/make_gs_script_tags.bat") 
		   ))
		

		(("1" . "生成并使用Client脚本Tags信息") . 
		 (lambda () 
		   (interactive)
		   (shell-command "D:/adin.works/mj_src/make_gs_client_tags.bat") 
		   ))
        ))

(defun one-key-menu-luolE-tags ()
  "."
  (interactive)
  (one-key-menu "luolE" one-key-menu-luolE-tags-alist t))

;;-------------------------------------------------------------------------


;; Bind any you like keystroke with function `one-key-menu-luolE'.
;; Like me,

(global-set-key (kbd "M-m") 'one-key-menu-luolE-main) ;

(provide 'init-one-key)

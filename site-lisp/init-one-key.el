(require 'one-key)
(require 'init-one-key-dir)

(defvar one-key-menu-luolE-main-alist nil
  "`One-Key' menu list for luolE.")

(setq one-key-menu-luolE-main-alist
      '(
		(("a" . "Anything-Mode") . (lambda() (interactive) (anything)))
		(("d" . "Ŀ¼") . one-key-menu-luolE-dir)
		(("e" . "����") . one-key-menu-luolE-config)
		(("s" . "����") . one-key-menu-luolE-search)
		(("f" . "�ļ�") . one-key-menu-luolE-file)
		(("h" . "������ǰ����") . highlight-symbol-at-point)
		(("w" . "����Ԥ��") . (lambda () (interactive) ( cn-weather)  ))
		(("b" . "�������б�") . (lambda () (interactive) (ibuffer)))
		(("t" . "Tags��Ϣ") . one-key-menu-luolE-tags)
		(("q" . "�˳�emacs") . (lambda () (interactive) (save-buffers-kill-terminal)))
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
		(("e" . ".EMACS ����") . 
		 (lambda () 
		   (interactive) 
		   (find-file "~/.emacs")))

		(("q" . "One-Key �˵�����") . 
		 (lambda () 
		   (interactive) 
		   (find-file "~/site-lisp/init-one-key.el")  ))
		
		(("c" . "�޸���������") .
		 (lambda () 
		   (interactive) 
		   (find-file "~/site-lisp/init-color-theme.el" )  ))
		
		(("1" . "�޸�luolE�Զ��幦��") .
		 (lambda () 
		   (interactive) 
		   (find-file "~/site-lisp/init-luolE-easy-keys.el" )  ))

		(("d" . "luolE�����ļ���") .
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
		(("f" . "������ǰ�ĵ�") . 
		 (lambda () 
		   (interactive)
		   (command-execute 'moccur)
		   ))
		

		(("d" . "������ǰĿ¼") . 
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
		(("c" . "�ı䵱ǰ�ļ������ʽ") . 
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
		(("w" . "���ɲ�ʹ��GameServer�ű�Tags��Ϣ") . 
		 (lambda () 
		   (interactive)
		   (shell-command "D:/adin.works/mj_src/make_gs_script_tags.bat") 
		   ))
		

		(("1" . "���ɲ�ʹ��Client�ű�Tags��Ϣ") . 
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

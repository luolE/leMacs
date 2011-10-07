;;-------------------------------------------------------------------------
(defvar one-key-menu-luolE-dir-alist nil
  "`One-Key' menu list for luolE.")

(setq one-key-menu-luolE-dir-alist
      '(
        
        (("1" . "�齫�ͻ��˽ű�") . 
         (lambda ()
           (interactive) 
           (dired "D:/adin.works/MJ.Source/SourceCode/gameworld/product/debug/client/script")) )
        
        (("2" . "�齫�ͻ���UI�ű�") .
         (lambda ()
           (interactive)
           (dired "e:/client/ui/script")) )
        
        (("3" . "�齫�������˽ű�") .
         (lambda ()
           (interactive) 
           (dired "G:/_src/gameworld/product/debug/server/gameserver/script")) )
		
        (("w" . "��������") .
         (lambda ()
           (interactive) 
           ;; (dired "D:/adin.works/MJ.Source/SourceCode/gameworld/product/debug/server/gameserver/script/task/daily_task")) )
           (dired "d:/!adin.works/script/task/")) )
           ;; (dired "G:/_src/gameworld/product/debug/server/gameserver/script/pvp/yongzhe/")) ) ;
		   
		(("e" . "Emacs����Ŀ¼") .
         (lambda ()
           (interactive) 
           (dired "~/")) )
		
		))

(defun one-key-menu-luolE-dir ()
  "��������Ŀ¼."
  (interactive)
  (one-key-menu "luolE" one-key-menu-luolE-dir-alist t))

(provide 'init-one-key-dir)

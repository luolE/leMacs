;;-------------------------------------------------------------------------
(defvar one-key-menu-luolE-dir-alist nil
  "`One-Key' menu list for luolE.")

(setq one-key-menu-luolE-dir-alist
      '(
        (("1" . "�齫�ͻ��˽ű�") . 
         (lambda ()
           (interactive) 
           (dired "D:/adin.works/mj_src/gameworld/product/debug/client/script")) )
        
        (("2" . "�齫�ͻ���UI�ű�") .
         (lambda ()
           (interactive)
           (dired "D:/adin.works/mj_src/gameworld/product/debug/client/ui/script")) )
        
        (("3" . "�齫�������˽ű�") .
         (lambda ()
           (interactive) 
           (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script")) )
		
        (("w" . "��ǰ��������Ŀ¼") .
         (lambda ()
           (interactive) 
           ;; (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/task/daily_task")) )
           ;; (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/task/gourmetrestaurant")) )
		   (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gamecenter/script/pvp/")))
           ;; (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/pvp/yongzhe")) )
           ;; (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/lib")) )
		   ;; (dired "d:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/task/counter_strike")))
           ;; (dired "G:/_src/gameworld/product/debug/server/gameserver/script/pvp/yongzhe/")) ) ;
		
		(("t" . "��������������ؽű�") .
         (lambda ()
           (interactive) 
           (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/task")) )
		
		(("n" . "������NPC�ű�") .
         (lambda ()
           (interactive) 
           (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/npc")) )
		
		(("l" . "��������LIB��ؽű�") .
         (lambda ()
           (interactive) 
           (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/lib")) )
		   

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

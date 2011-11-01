;;-------------------------------------------------------------------------
(defvar one-key-menu-luolE-dir-alist nil
  "`One-Key' menu list for luolE.")

(setq one-key-menu-luolE-dir-alist
      '(
        (("1" . "麻将客户端脚本") . 
         (lambda ()
           (interactive) 
           (dired "D:/adin.works/mj_src/gameworld/product/debug/client/script")) )
        
        (("2" . "麻将客户端UI脚本") .
         (lambda ()
           (interactive)
           (dired "D:/adin.works/mj_src/gameworld/product/debug/client/ui/script")) )
        
        (("3" . "麻将服务器端脚本") .
         (lambda ()
           (interactive) 
           (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script")) )
		
        (("w" . "当前工作任务目录") .
         (lambda ()
           (interactive) 
           ;; (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/task/daily_task")) )
           ;; (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/task/gourmetrestaurant")) )
		   (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gamecenter/script/pvp/")))
           ;; (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/pvp/yongzhe")) )
           ;; (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/lib")) )
		   ;; (dired "d:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/task/counter_strike")))
           ;; (dired "G:/_src/gameworld/product/debug/server/gameserver/script/pvp/yongzhe/")) ) ;
		
		(("t" . "服务器端任务相关脚本") .
         (lambda ()
           (interactive) 
           (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/task")) )
		
		(("n" . "服务器NPC脚本") .
         (lambda ()
           (interactive) 
           (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/npc")) )
		
		(("l" . "服务器端LIB相关脚本") .
         (lambda ()
           (interactive) 
           (dired "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/lib")) )
		   

		(("e" . "Emacs工作目录") .
         (lambda ()
           (interactive) 
           (dired "~/")) )		
		))

(defun one-key-menu-luolE-dir ()
  "弹出常用目录."
  (interactive)
  (one-key-menu "luolE" one-key-menu-luolE-dir-alist t))

(provide 'init-one-key-dir)

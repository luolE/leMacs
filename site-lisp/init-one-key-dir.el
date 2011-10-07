;;-------------------------------------------------------------------------
(defvar one-key-menu-luolE-dir-alist nil
  "`One-Key' menu list for luolE.")

(setq one-key-menu-luolE-dir-alist
      '(
        
        (("1" . "麻将客户端脚本") . 
         (lambda ()
           (interactive) 
           (dired "D:/adin.works/MJ.Source/SourceCode/gameworld/product/debug/client/script")) )
        
        (("2" . "麻将客户端UI脚本") .
         (lambda ()
           (interactive)
           (dired "e:/client/ui/script")) )
        
        (("3" . "麻将服务器端脚本") .
         (lambda ()
           (interactive) 
           (dired "G:/_src/gameworld/product/debug/server/gameserver/script")) )
		
        (("w" . "反恐任务") .
         (lambda ()
           (interactive) 
           ;; (dired "D:/adin.works/MJ.Source/SourceCode/gameworld/product/debug/server/gameserver/script/task/daily_task")) )
           (dired "d:/!adin.works/script/task/")) )
           ;; (dired "G:/_src/gameworld/product/debug/server/gameserver/script/pvp/yongzhe/")) ) ;
		   
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

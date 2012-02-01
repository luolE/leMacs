(autoload 'anything "anything" nil t)
(autoload 'get-files-recursive "luolE-elisp-glib" nil t)


(defvar anything-source-mljh-file-search
  '((name . "麻辣江湖文件列表")
    (candidates . (lambda()
					(append
					 (get-files-recursive 
					  "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/pvp/yongzhe" 
					  "\\.lua$")
					 (get-files-recursive 
					  "D:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/task/daily_task" 
					  "\\.lua$")
					 (get-files-recursive 
					  "d:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/task/counter_strike" 
					  "\\.lua$")
					 (get-files-recursive 
					  "d:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/task/gourmetrestaurant" 
					  "\\.lua$")
					 (get-files-recursive 
					  "d:/adin.works/mj_src/gameworld/product/debug/server/gameserver/script/npc" 
					  "\\.lua$")
					)
					)
)
	
    ;; (type . file)
	(action . find-file)
    (requires-pattern . 2)
    (delayed)))

(eval-after-load 'anything
  '(progn
	 
	 ;; 高亮匹配字符
	 (require 'anything-match-plugin)
	 
	 ;; 设置按键
	 (define-key anything-map (kbd "M-p") 'anything-previous-line)
	 (define-key anything-map (kbd "M-n") 'anything-next-line)
	 
	 ;; 设置搜索源
	 (setq anything-sources
		   (list 
			anything-source-mljh-file-search
			))
	 ))


;; ;;;;;;;;;;;;;;;;;;;; FILE ENDS HERE ;;;;;;;;;;;;;;;;;;;;
(provide 'init-anything)











(autoload 'anything "anything" nil t)
(autoload 'get-files-recursive "luolE-elisp-glib" nil t)


(defvar anything-source-mljh-file-search
  '((name . "���������ļ��б�")
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
	 
	 ;; ����ƥ���ַ�
	 (require 'anything-match-plugin)
	 
	 ;; ���ð���
	 (define-key anything-map (kbd "M-p") 'anything-previous-line)
	 (define-key anything-map (kbd "M-n") 'anything-next-line)
	 
	 ;; ��������Դ
	 (setq anything-sources
		   (list 
			anything-source-mljh-file-search
			))
	 ))


;; ;;;;;;;;;;;;;;;;;;;; FILE ENDS HERE ;;;;;;;;;;;;;;;;;;;;
(provide 'init-anything)











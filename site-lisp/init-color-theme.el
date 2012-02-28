;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 工具栏 / 菜单 / 滚动条 设置
;;---------------------------------------------------------------------  
;; 设置关闭滚动条,工具栏,菜单栏
;; 也可以配置REG文件来实现(更高效)
;; [HKEY_LOCAL_MACHINE\SOFTWARE\GNU\Emacs]
;; "Emacs.ScrollBars"="OFF"
;; "Emacs.MenuBar"="OFF"
;; "Emacs.ToolBar"="OFF"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; 加载color-theme
(require 'color-theme)

;; 加载 color-theme-maker 插件
(autoload 'color-theme-maker "color-theme-maker" nil t)

;; 加载 face-list 插件
;; (require 'face-list)

;; 加载 color-theme 主题
;; (color-theme-initialize)
;; (color-theme-arjen)

;; 加载自定义主题
(require 'color-theme-luolE-darknight)
(color-theme-luolE-darknight)

;; (require 'color-theme-luolE-element)
;; (color-theme-luolE-element)

;; (require 'color-theme-luolE-blood-and-sand)
;; (color-theme-luolE-blood-and-sand)

;; (require 'color-theme-luolE-darkrose)
;; (color-theme-luolE-darkrose)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs 字体设置
;;--------------------------------------------------------------------
;; 字体同样可以在X-Windows的HOME$目录下定义在~/.XDefaults文件中
;; MS中则修改注册表，设置键值 [HKEY_LOCAL_MACHINE\SOFTWARE\GNU\Emacs]
;; 
;; Emacs.Font: DejaVu Sans Mono-10
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; 字体设置::英文字体 ;;;;;
;; (set-default-font "ProFontWindows-10")	

;;;;;; 字体设置::中文字体 ;;;;;;
(set-fontset-font (frame-parameter nil 'font)
		  'han (font-spec :family "微软雅黑" :size 15))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 窗口位置设置
;;--------------------------------------------------------------------  
;; 设置启动窗口位置大小
;; 也可以配置REG文件来实现(更高效)
;; [HKEY_LOCAL_MACHINE\SOFTWARE\GNU\Emacs]
;; "Emacs.Geometry"="100x30+240+70"
;;
;; X-Windows下设置
;; 在你的 ~/.Xdefaults 中增加下面这行
;; Emacs.geometry: 80x30+20+10
;; 然后运行 xrdb -merge ~/.Xdefaults
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (when (not (equal window-system 'w32))
;; 	;; 目前只在linux下设置
;; 	(setq default-frame-alist
;; 		  (append
;; 		   '( (top . 200)
;; 			  (left . 400)
;; 			  (width . 120)
;; 			  (height . 40))
;; 		   default-frame-alist)))



(provide 'init-color-theme)

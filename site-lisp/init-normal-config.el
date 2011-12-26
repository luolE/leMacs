;;--------------------------------------------------------------------
;; 常用设置
;;--------------------------------------------------------------------

;; 关闭emacs启动时的提示信息
(setq inhibit-startup-message t)       

;;括号匹配时加亮显示另外一边的括号，而不是烦人的跳到另一个括号 
;; (show-paren-mode t)

;;;;;; 在标题栏显示buffer的名字 ;;;;;;
(setq frame-title-format "<<%b>> @ %f")

;; 页面平滑移动(关闭页面向下移动时的翻页效果)
(setq scroll-step 1 scroll-margin 3 scroll-conservatively 10000)

;;只渲染当前屏幕语法高亮，加快显示速度
(setq font-lock-maximum-decoration t)

;;;;;; 在标题栏显示固定的名字 ;;;;;;
;; (setq frame-title-format "The God's Editor Emacs")

;;;;;;;; 使用空格缩进 ;;;;;;;;
;; indent-tabs-mode  t 使用 TAB 作格式化字符  nil 使用空格作格式化字符
(setq indent-tabs-mode nil)
(setq tab-always-indent t)
(setq default-tab-width 4)
(setq tab-width 4)

;; 高亮当前光标所在行(与Linum冲突)
;; (global-hl-line-mode)

;; M-x 输入指令后,等待一秒出现该指令的绑定键
(setq suggest-key-bindings 1)

;;;;;; 图片模式 ;;;;;;
(auto-image-file-mode t)

;; 外部修改自动提示
(global-auto-revert-mode t)

;; 关闭自动换行
;; (setq default-truncate-lines t)

;;;;;; 关掉文件备份 ;;;;;;
;(setq-default make-backup-files nil)	

;;;;;; 只输入y代替yes，n代替no ;;;;;;
(fset 'yes-or-no-p 'y-or-n-p)	

 
;;;;;; 鼠标滚轮设定 ;;;;;;
(setq mouse-wheel-scroll-amount `(2)) 
;;鼠标滚轮加速度,不需要则设置为nil
(setq mouse-wheel-progressive-speed 1)
;;关闭鼠标选择自动复制 
(setq mouse-drag-copy-region nil) 
;;开启控制台鼠标支持
(xterm-mouse-mode t)


;;;;;; 自动重载更改的文件 ;;;;;;
(global-auto-revert-mode 1)
;; emacs与外部程序粘贴
(setq x-select-enable-clipboard t);

;;;;;; 透明设置 ;;;;;;
;; (set-frame-parameter (selected-frame) 'alpha (list 95 90))
;; (add-to-list 'default-frame-alist (cons 'alpha (list 95 90)))

;;--------------------------------------------------------------------
;; 时间显示 
;;--------------------------------------------------------------------

;(setq display-time-24hr-format nil)				;;时间使用12小时制
(setq display-time-day-and-date t)				;;时间显示包括日期和具体时间
(setq display-time-interval 10)					;;时间的变化频率
(setq display-time-format "%m月%d日%A %H:%M")	;;显示时间的格式
(display-time)									;;启用时间显示设置，在minibuffer上面的那个杠上




;;--------------------------------------------------------------------
;; 备份设置 
;;--------------------------------------------------------------------
(setq auto-save-default nil)
(setq delete-auto-save-file t
      auto-save-timeout 300)       ;自动存盘设置,五分钟存盘一次
      ;auto-save-interval 400            ;400字
      ;auto-save-timeout 300)            ;5分钟
(setq auto-save-mode t)
;;启用版本控制，即可以备份多次
(setq version-control t)
;;备份最原始的版本两次，记第一次编辑前的文档，和第二次编辑前的文档
(setq kept-old-versions 2)
;;备份最新的版本十次，理解同上
(setq kept-new-versions 10)
;;删掉不属于以上12中版本的版本
(setq delete-old-versions t)
;;设置备份文件的路径
(setq backup-directory-alist '(("." . "~/.emacs.d/backup")))
;;备份设置方法，直接拷贝
(setq backup-by-copying t)
(setq make-backup-file nil)
(setq dired-kept-versions 1)

;; Emacs 中，改变文件时，默认都会产生备份文件(以 ~ 结尾的文件)。可以完全去掉
;; (并不可取)，也可以制定备份的方式。这里采用的是，把所有的文件备份都放在一
;; 个固定的地方("~/var/tmp")。对于每个备份文件，保留最原始的两个版本和最新的
;; 五个版本。并且备份的时候，备份文件是复本，而不是原件。

(provide 'init-normal-config)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; luolE-easy-keys.el ends here

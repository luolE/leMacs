
;;--------------------------------------------------------------------
;; 姓名地址信息 
;;--------------------------------------------------------------------
(setq user-full-name "Ks.luolE")
(setq user-mail-address "luole@kingsoft.com")


;;----------------------------------------------------------------------------
;; 功能开关 (use t or nil for true and false)
;;----------------------------------------------------------------------------
(setq *byte-code-cache-enabled* nil)
(setq *vi-control-habit-enabled* nil)


;;--------------------------------------------------------------------
;; Linux 下配置load file 
;;--------------------------------------------------------------------
(when (not (equal window-system 'w32))
  (defun my-add-subdirs-to-load-path (dir)
	(let ((default-directory (concat dir "/")))
	  (setq load-path (cons dir load-path))
	  (normal-top-level-add-subdirs-to-load-path)))
  (my-add-subdirs-to-load-path "~/site-lisp"))


;;----------------------------------------------------------------------------
;; 加载插件配置
;;----------------------------------------------------------------------------
(require 'cl)
(require 'init-elpa)
(when *byte-code-cache-enabled* (require 'init-byte-code-cache))
(require 'init-luolE-easy-keys)
(require 'init-normal-config)
(require 'init-editing-utils)
(require 'init-color-theme)
(require 'init-lua-mode)
(require 'init-c-cpp-mode)
(require 'init-cmake-mode)
(require 'init-php-mode)
(require 'init-sr-speedbar)
(require 'init-moccur)
(require 'init-ido)
(require 'init-auto-complete)
(require 'init-yasnippet)
(require 'init-ibuffer)
(require 'init-fullscreen)
(require 'init-linum)
(require 'init-recent-jump)
(require 'init-one-key)
(require 'init-highlight-symbol)
(require 'init-indent-after-paste)
(require 'init-other-widgets)
(require 'init-sandbox)

;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;;----------------------------------------------------------------------------
(require 'server)
(or (server-running-p) (server-start))


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

;;----------------------------------------------------------------------------
;; 加载插件配置
;;----------------------------------------------------------------------------
(require 'cl)
(require 'init-elpa)
(when *byte-code-cache-enabled* (require 'init-byte-code-cache))
(require 'init-luolE-easy-keys)
(require 'init-normal-config)
(require 'init-color-theme)
(require 'init-editing-utils)
(require 'init-moccur)
(require 'init-ido)
(require 'init-auto-complete)
(require 'init-yasnippet)
(require 'init-lua-mode)
(require 'init-select-window)
(require 'init-ibuffer)
(require 'init-fullscreen)
(require 'init-htmlize)
(require 'init-linum)
(require 'init-recent-jump)
(require 'init-c-cpp-mode)
(require 'init-cmake-mode)
(require 'init-one-key)
(require 'init-highlight-symbol)
(require 'init-indent-after-paste)


;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;;----------------------------------------------------------------------------
(require 'server)
(server-start)

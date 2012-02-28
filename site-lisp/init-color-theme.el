;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ������ / �˵� / ������ ����
;;---------------------------------------------------------------------  
;; ���ùرչ�����,������,�˵���
;; Ҳ��������REG�ļ���ʵ��(����Ч)
;; [HKEY_LOCAL_MACHINE\SOFTWARE\GNU\Emacs]
;; "Emacs.ScrollBars"="OFF"
;; "Emacs.MenuBar"="OFF"
;; "Emacs.ToolBar"="OFF"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; ����color-theme
(require 'color-theme)

;; ���� color-theme-maker ���
(autoload 'color-theme-maker "color-theme-maker" nil t)

;; ���� face-list ���
;; (require 'face-list)

;; ���� color-theme ����
;; (color-theme-initialize)
;; (color-theme-arjen)

;; �����Զ�������
(require 'color-theme-luolE-darknight)
(color-theme-luolE-darknight)

;; (require 'color-theme-luolE-element)
;; (color-theme-luolE-element)

;; (require 'color-theme-luolE-blood-and-sand)
;; (color-theme-luolE-blood-and-sand)

;; (require 'color-theme-luolE-darkrose)
;; (color-theme-luolE-darkrose)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs ��������
;;--------------------------------------------------------------------
;; ����ͬ��������X-Windows��HOME$Ŀ¼�¶�����~/.XDefaults�ļ���
;; MS�����޸�ע������ü�ֵ [HKEY_LOCAL_MACHINE\SOFTWARE\GNU\Emacs]
;; 
;; Emacs.Font: DejaVu Sans Mono-10
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; ��������::Ӣ������ ;;;;;
;; (set-default-font "ProFontWindows-10")	

;;;;;; ��������::�������� ;;;;;;
(set-fontset-font (frame-parameter nil 'font)
		  'han (font-spec :family "΢���ź�" :size 15))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ����λ������
;;--------------------------------------------------------------------  
;; ������������λ�ô�С
;; Ҳ��������REG�ļ���ʵ��(����Ч)
;; [HKEY_LOCAL_MACHINE\SOFTWARE\GNU\Emacs]
;; "Emacs.Geometry"="100x30+240+70"
;;
;; X-Windows������
;; ����� ~/.Xdefaults ��������������
;; Emacs.geometry: 80x30+20+10
;; Ȼ������ xrdb -merge ~/.Xdefaults
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (when (not (equal window-system 'w32))
;; 	;; Ŀǰֻ��linux������
;; 	(setq default-frame-alist
;; 		  (append
;; 		   '( (top . 200)
;; 			  (left . 400)
;; 			  (width . 120)
;; 			  (height . 40))
;; 		   default-frame-alist)))



(provide 'init-color-theme)

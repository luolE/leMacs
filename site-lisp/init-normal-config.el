;;--------------------------------------------------------------------
;; ��������
;;--------------------------------------------------------------------

;; �ر�emacs����ʱ����ʾ��Ϣ
(setq inhibit-startup-message t)       

;;����ƥ��ʱ������ʾ����һ�ߵ����ţ������Ƿ��˵�������һ������ 
;; (show-paren-mode t)

;;;;;; �ڱ�������ʾbuffer������ ;;;;;;
(setq frame-title-format "<<%b>> @ %f")

;; ҳ��ƽ���ƶ�(�ر�ҳ�������ƶ�ʱ�ķ�ҳЧ��)
;; (setq scroll-step 1 scroll-margin 3 scroll-conservatively 10000)

;;ֻ��Ⱦ��ǰ��Ļ�﷨�������ӿ���ʾ�ٶ�
(setq font-lock-maximum-decoration t)

;;;;;; �ڱ�������ʾ�̶������� ;;;;;;
;; (setq frame-title-format "The God's Editor Emacs")

;;;;;;;; ʹ�ÿո����� ;;;;;;;;
;; indent-tabs-mode  t ʹ�� TAB ����ʽ���ַ�  nil ʹ�ÿո�����ʽ���ַ�
(setq indent-tabs-mode nil)
(setq tab-always-indent t)
(setq default-tab-width 4)
(setq tab-width 4)

;; ������ǰ���������(��Linum��ͻ)
;; (global-hl-line-mode)

;; M-x ����ָ���,�ȴ�һ����ָ�ָ��İ󶨼�
(setq suggest-key-bindings 1)

;;;;;; ͼƬģʽ ;;;;;;
(auto-image-file-mode t)

;; �ⲿ�޸��Զ���ʾ
(global-auto-revert-mode t)

;; �ر��Զ�����
;; (setq default-truncate-lines t)

;;;;;; �ص��ļ����� ;;;;;;
;(setq-default make-backup-files nil)	

;;;;;; ֻ����y����yes��n����no ;;;;;;
(fset 'yes-or-no-p 'y-or-n-p)	

 
;;;;;; �������趨 ;;;;;;
(setq mouse-wheel-scroll-amount `(2)) 
;;�����ּ��ٶ�,����Ҫ������Ϊnil
(setq mouse-wheel-progressive-speed 1)
;;�ر����ѡ���Զ����� 
(setq mouse-drag-copy-region nil) 
;;��������̨���֧��
(xterm-mouse-mode t)


;;;;;; �Զ����ظ��ĵ��ļ� ;;;;;;
(global-auto-revert-mode 1)
;; emacs���ⲿ����ճ��
(setq x-select-enable-clipboard t);

;;;;;; ͸������ ;;;;;;
;; (set-frame-parameter (selected-frame) 'alpha (list 95 90))
;; (add-to-list 'default-frame-alist (cons 'alpha (list 95 90)))

;;--------------------------------------------------------------------
;; ʱ����ʾ 
;;--------------------------------------------------------------------

;(setq display-time-24hr-format nil)				;;ʱ��ʹ��12Сʱ��
(setq display-time-day-and-date t)				;;ʱ����ʾ�������ں;���ʱ��
(setq display-time-interval 10)					;;ʱ��ı仯Ƶ��
(setq display-time-format "%m��%d��%A %H:%M")	;;��ʾʱ��ĸ�ʽ
(display-time)									;;����ʱ����ʾ���ã���minibuffer������Ǹ�����




;;--------------------------------------------------------------------
;; �������� 
;;--------------------------------------------------------------------
(setq auto-save-default nil)
(setq delete-auto-save-file t
      auto-save-timeout 300)       ;�Զ���������,����Ӵ���һ��
      ;auto-save-interval 400            ;400��
      ;auto-save-timeout 300)            ;5����
(setq auto-save-mode t)
;;���ð汾���ƣ������Ա��ݶ��
(setq version-control t)
;;������ԭʼ�İ汾���Σ��ǵ�һ�α༭ǰ���ĵ����͵ڶ��α༭ǰ���ĵ�
(setq kept-old-versions 2)
;;�������µİ汾ʮ�Σ����ͬ��
(setq kept-new-versions 10)
;;ɾ������������12�а汾�İ汾
(setq delete-old-versions t)
;;���ñ����ļ���·��
(setq backup-directory-alist '(("." . "~/.emacs.d/backup")))
;;�������÷�����ֱ�ӿ���
(setq backup-by-copying t)
(setq make-backup-file nil)
(setq dired-kept-versions 1)

;; Emacs �У��ı��ļ�ʱ��Ĭ�϶�����������ļ�(�� ~ ��β���ļ�)��������ȫȥ��
;; (������ȡ)��Ҳ�����ƶ����ݵķ�ʽ��������õ��ǣ������е��ļ����ݶ�����һ
;; ���̶��ĵط�("~/var/tmp")������ÿ�������ļ���������ԭʼ�������汾�����µ�
;; ����汾�����ұ��ݵ�ʱ�򣬱����ļ��Ǹ�����������ԭ����

(provide 'init-normal-config)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; luolE-easy-keys.el ends here

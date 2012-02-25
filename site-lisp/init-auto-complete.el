(require 'auto-complete)
(require 'auto-complete-config)
(require 'auto-complete-extension)
(require 'auto-complete-yasnippet)
(require 'auto-complete-etags)

;;----------------------------------------------------------------------------
;; Use Emacs' built-in TAB completion hooks to trigger AC (Emacs >= 23.2)
;;----------------------------------------------------------------------------
(setq tab-always-indent 'complete)  ;; use 'complete when auto-complete is disabled
(add-to-list 'completion-styles 'initials t)

;; hook AC into completion-at-point
;; (defun set-auto-complete-as-completion-at-point-function ()
;;   (setq completion-at-point-functions '(auto-complete)))
;; (add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)


(set-default 'ac-sources
             '(ac-source-semantic
               ac-source-yasnippet
               ac-source-words-in-buffer
               ac-source-words-in-all-buffer
			   ;; ac-source-symbols
			   ))

(dolist (mode '(magit-log-edit-mode log-edit-mode org-mode text-mode haml-mode
                sass-mode yaml-mode csv-mode espresso-mode haskell-mode
                html-mode nxml-mode sh-mode smarty-mode clojure-mode
                lisp-mode textile-mode markdown-mode tuareg-mode lua-mode))
  (add-to-list 'ac-modes mode))


;;--------------------------------------------------------------------
;; Initialize
;;--------------------------------------------------------------------
(global-auto-complete-mode t)
(setq ac-dwim nil) ; To get pop-ups with docs even if a word is uniquely completed
(setq ac-auto-start 2) ;; 默认输入n个字母打开自动完成
(setq ac-auto-show-menu 0.1)
(setq ac-expand-on-auto-complete t)
(setq ac-quick-help-delay 1.0)
(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)
(define-key ac-completing-map (kbd "M-SPC") 'ac-stop)

(add-to-list 'ac-dictionary-directories "~/site-lisp/auto-complete-dict")


;;--------------------------------------------------------------------
;; Yasnippet Integration 
;;--------------------------------------------------------------------
;; (eval-after-load 'yasnippet 
;;   '(progn
	 ;; (add-hook 
	 ;;  'yas/before-expand-snippet-hook 
	 ;;  '(lambda() 
	 ;; 	 (setq ac-auto-start 2)
	 ;; 	 ))
	 ;; (add-hook 
	 ;;  'yas/after-exit-snippet-hook 
	 ;;  '(lambda() 
	 ;; 	 (setq ac-auto-start nil)
	 ;; 	 ))
	 ;; ))

(provide 'init-auto-complete)

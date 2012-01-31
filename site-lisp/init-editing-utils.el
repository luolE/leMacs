
;;----------------------------------------------------------------------------
;; Some basic preferences
;;----------------------------------------------------------------------------


;;----------------------------------------------------------------------------
;; Don't disable narrowing commands
;;----------------------------------------------------------------------------
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-defun 'disabled nil)

;;----------------------------------------------------------------------------
;; Show matching parens
;;----------------------------------------------------------------------------
(require 'highlight-parentheses)
(add-hook 'find-file-hook (lambda () (highlight-parentheses-mode t)))
(setq hl-paren-colors (quote ("red" "yellow" "blue" "green")))

;;----------------------------------------------------------------------------
;; Autopair quotes and parentheses
;;----------------------------------------------------------------------------
(require 'autopair)
(setq autopair-autowrap t)
(autopair-global-mode t)


;;----------------------------------------------------------------------------
;; Don't disable case-change functions
;;----------------------------------------------------------------------------
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)


;;----------------------------------------------------------------------------
;; Easily count words (http://emacs-fu.blogspot.com/2009/01/counting-words.html)
;;----------------------------------------------------------------------------

; Show typing speed
(autoload 'typing-speed-mode "typing-speed-mode" "Show typing speed in modeline")
(autoload 'turn-on-typing-speed "typing-speed-mode" "Show typing speed in modeline")
(add-hook 'find-file-hook (lambda () (turn-on-typing-speed)))

;; Get handy scratch buffers for any major mode
(autoload 'scratch "scratch" nil t)



;;--------------------------------------------------------------------
;; hl-line-mode 
;;--------------------------------------------------------------------
(global-hl-line-mode t)

(provide 'init-editing-utils)

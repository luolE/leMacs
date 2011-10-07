(require 'auto-complete)
(require 'auto-complete-config)
(require 'auto-complete-extension)
(require 'auto-complete-yasnippet)
(require 'auto-complete-etags)

(global-auto-complete-mode t)
(setq ac-auto-start nil)
(setq ac-dwim nil) ; To get pop-ups with docs even if a word is uniquely completed
(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)
(add-to-list 'ac-dictionary-directories "~/site-lisp/auto-complete-dict")

;;----------------------------------------------------------------------------
;; Use Emacs' built-in TAB completion hooks to trigger AC (Emacs >= 23.2)
;;----------------------------------------------------------------------------
(setq tab-always-indent 'complete)  ;; use 'complete when auto-complete is disabled
(add-to-list 'completion-styles 'initials t)

;; hook AC into completion-at-point
(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))
(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)


(set-default 'ac-sources
             '(ac-source-symbols
			   ac-source-yasnippet
               ac-source-words-in-buffer
			   ac-source-dictionary
               ;; ac-source-words-in-same-mode-buffers
               ;; ac-source-words-in-all-buffer
			   ))

(dolist (mode '(magit-log-edit-mode log-edit-mode org-mode text-mode haml-mode
                sass-mode yaml-mode csv-mode espresso-mode haskell-mode
                html-mode nxml-mode sh-mode smarty-mode clojure-mode
                lisp-mode textile-mode markdown-mode tuareg-mode lua-mode))
  (add-to-list 'ac-modes mode))



(provide 'init-auto-complete)

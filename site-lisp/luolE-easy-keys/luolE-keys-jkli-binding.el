(require 'luolE-keys-func)

(defun change-movepos-keys-to-jkli ()
  "rebinding cursor movement keys to M-j,k,l,i"
  (interactive)
  (global-set-key (kbd "M-j") 'backward-word)
  (global-set-key (kbd "M-k") 'next-line)
  (global-set-key (kbd "M-l") 'forward-word)
  (global-set-key (kbd "M-i") 'previous-line)
  (global-set-key (kbd "M-u") 'backward-char)
  (global-set-key (kbd "M-o") 'forward-char)
  (global-set-key (kbd "M-p") 'forward-page)
  (global-set-key (kbd "M-n") 'backward-page)
  
  ;;Tranlate M-RET to RET
  (define-key key-translation-map (kbd "M-RET")  [13]) 

  ;; delete word without kill ring
  (global-set-key (kbd "C-d") 'delete-char)
  (global-set-key (kbd "M-d") 'delete-cur-word-or-cut-region)
  (define-key global-map [C-backspace] 'delete-backward-word-without-kill-ring)

  ;; other key bindings.
  (global-set-key (kbd "M-h") 'mark-line)
  (global-set-key (kbd "M-H") 'mark-defun)
  (global-set-key (kbd "C-n") 'delete-cur-line-in-anypos)
  (global-set-key (kbd "M-w") 'mark-word)
  (global-set-key (kbd "M-W") 'luolE-mark-char)
  (global-set-key (kbd "M-z") 'set-mark-command)
  
  ;; Rebind M-a / M-e as the same as C-a / C-e
  (global-set-key (kbd "M-a") 'move-beginning-of-line)
  (global-set-key (kbd "M-e") 'move-end-of-line)
  
  ;;first char in current line.
  (global-set-key (kbd "M-s") 'back-to-indentation)
)


(progn
  (change-movepos-keys-to-jkli)
  (change-other-key-binding)
  (change-windows-control-keys)
  (cua-mode t)
  (setq cua-enable-cua-keys t)
  )

(provide 'luolE-keys-jkli-binding)

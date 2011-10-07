(autoload 'popup-select-window "popup-select-window" nil t)

(global-set-key (kbd "M-2") 'popup-select-window)

(let ((keymap (make-sparse-keymap)))
  (set-keymap-parent keymap popup-menu-keymap)
  (define-key keymap (kbd "M-2") 'popup-select-window-next)
  (define-key keymap (kbd "M-n") nil)
  )

(provide 'init-select-window)

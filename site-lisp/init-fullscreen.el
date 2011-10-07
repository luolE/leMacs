(require 'w32-fullscreen)

(defun luolE-X-fullscreen ()
  "X-Windows��ȫ������"
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_FULLSCREEN" 0)))

(defun luolE-X-maximized ()
  "X-Windows ����󻯴���"
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(1 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(1 "_NET_WM_STATE_MAXIMIZED_VERT" 0)))

;; Win32 �� X-Win �ֿ���
(if (not (equal window-system 'w32))
	(global-set-key [f11] 'luolE-X-fullscreen)
  (global-set-key [f11] 'w32-fullscreen)
  )

(provide 'init-fullscreen)

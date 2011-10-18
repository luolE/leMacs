(if *vi-control-habit-enabled*
	(progn (require 'init-evil) (require 'luolE-keys-vi-binding))
  (require 'luolE-keys-jkli-binding))

;;--------------------------------------------------
(provide 'init-luolE-easy-keys)

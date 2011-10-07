(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/site-lisp/yasnippet-0.6.1c/snippets")
(setq yas/prompt-functions '(yas/dropdown-prompt))


(provide 'init-yasnippet)
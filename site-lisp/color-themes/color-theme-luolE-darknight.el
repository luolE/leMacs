(defun color-theme-luolE-darknight ()
  "Color subtheme, created 2010-11-03."
  (interactive)
  (color-theme-install
   '(color-theme-luolE-darknight nil nil
     (yas/field-highlight-face ((t (:background "SteelBlue4" :foreground "white"))))
     (yas/field-debug-face ((t (nil))))
     (widget-single-line-field ((t (:background "dim gray"))))
     (widget-inactive ((t (:foreground "grey70"))))
     (widget-field ((t (:background "dim gray"))))
     (widget-documentation ((t (:foreground "lime green"))))
     (widget-button-pressed ((t (:foreground "red1"))))
     (widget-button ((t (:bold t :weight bold))))
     (viper-search ((t (:background "khaki" :foreground "Black"))))
     (viper-replace-overlay ((t (:background "darkseagreen2" :foreground "Black"))))
     (viper-minibuffer-vi ((t (:background "grey" :foreground "DarkGreen"))))
     (viper-minibuffer-insert ((t (:background "pink" :foreground "Black"))))
     (viper-minibuffer-emacs ((t (:background "darkseagreen2" :foreground "Black"))))
     (vertical-border ((t (nil))))
     (variable-pitch ((t (:family "Sans Serif"))))
     (underline ((t (:underline t))))
     (trailing-whitespace ((t (:background "red1"))))
     (tooltip ((t (:background "systeminfowindow" :foreground "systeminfotext" :family "Sans Serif"))))
     (tool-bar ((t (:background "systembuttonface" :foreground "systembuttontext" :box (:line-width 1 :style released-button)))))
     (tabbar-unselected-face ((t (:background "gray30" :foreground "gray70" :box (:line-width 2 :color "gray30") :weight normal :height 90 :family "DejaVu Sans Mono"))))
     (tabbar-separator-face ((t (:background "gray30" :foreground "gray70" :height 100 :family "DejaVu Sans Mono"))))
     (tabbar-selected-face ((t (:italic t :background "#A6E22A" :foreground "black" :box (:line-width 1 :color "#B0FF2A") :slant italic :weight normal :height 100 :family "DejaVu Sans Mono"))))
     (tabbar-default-face ((t (:background "gray30" :foreground "gray70" :height 80 :family "DejaVu Sans Mono"))))
     (tabbar-button-face ((t (:bold t :family "DejaVu Sans Mono" :background "gray30" :foreground "gray70" :weight bold :height 100))))
     (speedbar-tag-face ((t (:foreground "#A6E22A"))))
     (speedbar-separator-face ((t (:background "SteelBlue4" :foreground "white" :overline "gray"))))
     (speedbar-selected-face ((t (:foreground "red" :underline t))))
     (speedbar-highlight-face ((t (:background "sea green"))))
     (speedbar-file-face ((t (:foreground "#89BDFF"))))
     (speedbar-directory-face ((t (:foreground "white"))))
     (speedbar-button-face ((t (:foreground "#F1266F"))))
     (show-paren-mismatch ((t (:background "purple" :foreground "white"))))
     (show-paren-match ((t (:background "steelblue3"))))
     (shadow ((t (:foreground "grey70"))))
     (semantic-unmatched-syntax-face ((t (:underline "red"))))
     (semantic-highlight-func-current-tag-face ((t (:background "gray20"))))
     (semantic-highlight-edits-face ((t (:background "gray20"))))
     (secondary-selection ((t (:background "SkyBlue4"))))
     (scroll-bar ((t (nil))))
     (region ((t (:background "SteelBlue4" :foreground "white"))))
     (query-replace ((t (:background "palevioletred2" :foreground "brown4"))))
     (pulse-highlight-start-face ((t (:background "#AAAA33"))))
     (pulse-highlight-face ((t (:background "#AAAA33"))))
     (pulldown-default-selection-face ((t (:background "steelblue" :foreground "white"))))
     (pulldown-default-face ((t (:background "lightgray" :foreground "black" :underline "darkgray"))))
     (popup-tip-face ((t (:background "khaki1" :foreground "black"))))
     (popup-scroll-bar-foreground-face ((t (:background "black"))))
     (popup-scroll-bar-background-face ((t (:background "gray"))))
     (popup-menu-selection-face ((t (:background "steelblue" :foreground "white"))))
     (popup-menu-face ((t (:background "lightgray" :foreground "black"))))
     (popup-isearch-match ((t (:background "sky blue"))))
     (popup-face ((t (:background "lightgray" :foreground "black"))))
     (one-key-title ((t (:foreground "Gold"))))
     (one-key-prompt ((t (:foreground "khaki3"))))
     (one-key-keystroke ((t (:foreground "DarkRed"))))
     (nobreak-space ((t (:foreground "cyan" :underline t))))
     (next-error ((t (:background "SteelBlue4" :foreground "white"))))
     (mouse ((t (nil))))
     (mode-line-inactive ((t (:background "grey30" :foreground "grey80" :box (:line-width -1 :color "grey40" :style nil) :weight light))))
     (mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
     (mode-line-emphasis ((t (:bold t :weight bold))))
     (mode-line-buffer-id ((t (:bold t :weight bold))))
     (mode-line ((t (:background "white" :foreground "black" :box (:line-width 1 :style released-button)))))
     (minibuffer-prompt ((t (:foreground "cyan"))))
     (menu ((t (:foreground "systemmenutext" :background "systemmenu"))))
     (match ((t (:background "RoyalBlue3"))))
     (linum ((t (:background "gray10" :foreground "#666666"))))
     (link-visited ((t (:foreground "violet" :underline t))))
     (link ((t (:foreground "cyan1" :underline t))))
     (lazy-highlight ((t (:background "yellow" :foreground "firebrick"))))
     (italic ((t (:italic t :underline t :slant italic))))
     (isearch-fail ((t (:background "red4"))))
     (isearch ((t (:background "palevioletred2" :foreground "brown4"))))
     (ido-subdir ((t (:foreground "#F1266F"))))
     (ido-only-match ((t (:foreground "ForestGreen"))))
     (ido-indicator ((t (:background "red1" :foreground "yellow1" :width condensed))))
     (ido-incomplete-regexp ((t (:bold t :foreground "#FD5FF1" :weight bold))))
     (ido-first-match ((t (:bold t :weight bold))))
     (hl-paren-face ((t (:bold t :weight bold))))
     (hl-line ((t (:bold t :background "#252525" :weight bold))))
     (highlight-symbol-face ((t (nil))))
     (highlight-80+ ((t (nil))))
     (highlight ((t (:background "darkolivegreen"))))
     (hi-yellow ((t (:background "yellow1" :foreground "black"))))
     (hi-red-b ((t (:bold t :foreground "red1" :weight bold))))
     (hi-pink ((t (:background "pink" :foreground "black"))))
     (hi-green-b ((t (:bold t :foreground "green1" :weight bold))))
     (hi-green ((t (:background "green1" :foreground "black"))))
     (hi-blue-b ((t (:bold t :foreground "blue1" :weight bold))))
     (hi-blue ((t (:background "light blue" :foreground "black"))))
     (hi-black-hb ((t (:bold t :weight bold :height 1.67 :family "Sans Serif"))))
     (hi-black-b ((t (:bold t :weight bold))))
     (help-argument-name ((t (nil))))
     (header-line ((t (:box (:line-width 1 :style released-button) :background "grey20" :foreground "grey90" :box nil))))
     (fs-line-face ((t (:foreground "green" :underline nil :weight normal))))
     (fs-file-name-mouse-move-facese ((t (:bold t :background "red" :foreground "yellow" :weight bold))))
     (fs-file-name-mouse-face ((t (:background "yellow"))))
     (fs-file-name-face ((t (:bold t :foreground "red" :underline t :weight bold))))
     (fringe ((t (:background "grey10"))))
     (font-lock-warning-face ((t (:bold t :foreground "#FD5FF1" :weight bold))))
     (font-lock-variable-name-face ((t (:bold t :foreground "#A6E22A" :weight bold))))
     (font-lock-type-face ((t (:bold t :foreground "#89BDFF" :weight bold))))
     (font-lock-string-face ((t (:foreground "#DFD874"))))
     (font-lock-preprocessor-face ((t (:bold t :foreground "#A6E22A" :weight bold))))
     (font-lock-negation-char-face ((t (nil))))
     (font-lock-keyword-face ((t (:bold t :foreground "#66D9EF" :weight bold))))
     (font-lock-function-name-face ((t (:italic t :bold t :foreground "#F1266F" :slant italic :weight bold))))
     (font-lock-doc-string-face ((t (:foreground "#65B042"))))
     (font-lock-doc-face ((t (:foreground "#DFD874"))))
     (font-lock-constant-face ((t (:bold t :foreground "#A6E22A" :weight bold))))
     (font-lock-comment-face ((t (:italic t :foreground "grey40" :slant italic))))
     (font-lock-comment-delimiter-face ((t (:italic t :foreground "grey40" :slant italic))))
     (font-lock-builtin-face ((t (:bold t :foreground "#A6E22A" :weight bold))))
     (fixed-pitch ((t (:family "Monospace"))))
     (file-name-shadow ((t (:foreground "grey70"))))
     (expander-face ((t (:background "darkblue" :foreground "white"))))
     (escape-glyph ((t (:foreground "cyan"))))
     (dropdown-list-selection-face ((t (:background "purple" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "DejaVu Sans Mono"))))
     (dropdown-list-face ((t (:background "lightyellow" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "DejaVu Sans Mono"))))
     (dired-warning ((t (:bold t :foreground "#FD5FF1" :weight bold))))
     (dired-symlink ((t (:bold t :foreground "#66D9EF" :weight bold))))
     (dired-perm-write ((t (:background "#121212" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "DejaVu Sans Mono"))))
     (dired-marked ((t (:bold t :foreground "#FD5FF1" :weight bold))))
     (dired-mark ((t (:bold t :foreground "#A6E22A" :weight bold))))
     (dired-ignored ((t (:foreground "grey70"))))
     (dired-header ((t (:bold t :foreground "#89BDFF" :underline t :weight bold))))
     (dired-flagged ((t (:bold t :foreground "#FD5FF1" :weight bold))))
     (dired-directory ((t (:italic t :bold t :foreground "#F1266F" :slant italic :weight bold))))
     (cursor ((t (:background "#DAD085"))))
     (cua-rectangle-noselect ((t (:background "dimgray" :foreground "white"))))
     (cua-rectangle ((t (:background "maroon" :foreground "white"))))
     (cua-global-mark ((t (:background "yellow1" :foreground "black"))))
     (completions-common-part ((t (:underline nil :overline nil :strike-through nil :box nil :inverse-video nil :stipple nil :background "#121212" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "DejaVu Sans Mono"))))
     (comint-highlight-prompt ((t (:foreground "cyan1"))))
     (comint-highlight-input ((t (:bold t :weight bold))))
     (button ((t (:underline t))))
     (buffer-menu-buffer ((t (:bold t :weight bold))))
     (border ((t (nil))))
     (bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
     (bold ((t (:bold t :weight bold))))
     (ac-yasnippet-selection-face ((t (:background "coral3" :foreground "white"))))
     (ac-yasnippet-candidate-face ((t (:background "sandybrown" :foreground "black"))))
     (ac-selection-face ((t (:background "blue" :foreground "white"))))
     (ac-gtags-selection-face ((t (:background "navy" :foreground "white"))))
     (ac-gtags-candidate-face ((t (:background "lightgray" :foreground "navy"))))
     (ac-etags-selection-face ((t (:background "deep sky blue" :foreground "white"))))
     (ac-etags-candidate-face ((t (:background "gainsboro" :foreground "deep sky blue"))))
     (ac-completion-face ((t (:background "darkblue" :foreground "white"))))
     (ac-candidate-face ((t (:background "lightgray" :foreground "black"))))
     (default ((t (:stipple nil :background "#121212" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "outline" :family "DejaVu Sans Mono")))))))
(provide 'color-theme-luolE-darknight)
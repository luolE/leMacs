(defun color-theme-luolE-darkrose ()
  "Color subtheme, created 2011-10-07."
  (interactive)
  (color-theme-install
   '(color-theme-luolE-darkrose nil nil
     (zmacs-region ((t (:background "snow" :foreground "blue"))))
     (yellow ((t (:foreground "yellow"))))
     (yas/field-highlight-face ((t (:background "DimGrey"))))
     (yas/field-debug-face ((t (nil))))
     (woman-unknown-face ((t (:foreground "LightSalmon"))))
     (woman-italic-face ((t (:foreground "beige"))))
     (woman-bold-face ((t (:bold t :weight bold))))
     (widget-single-line-field ((t (:background "dim gray"))))
     (widget-mouse-face ((t (:bold t :background "brown4" :foreground "white" :weight bold))))
     (widget-inactive ((t (:foreground "light gray"))))
     (widget-field ((t (:background "dim gray"))))
     (widget-documentation ((t (:foreground "lime green"))))
     (widget-button-pressed ((t (:foreground "red"))))
     (widget-button ((t (:bold t :weight bold))))
     (widget ((t (nil))))
     (warning ((t (:bold t :foreground "DarkOrange" :weight bold))))
     (viper-search ((t (:background "khaki" :foreground "Black"))))
     (viper-replace-overlay ((t (:background "darkseagreen2" :foreground "Black"))))
     (viper-minibuffer-vi ((t (:background "grey" :foreground "DarkGreen"))))
     (viper-minibuffer-insert ((t (:background "pink" :foreground "Black"))))
     (viper-minibuffer-emacs ((t (:background "darkseagreen2" :foreground "Black"))))
     (vertical-divider ((t (nil))))
     (vertical-border ((t (nil))))
     (variable-pitch ((t (:family "Sans Serif"))))
     (undo-tree-visualizer-register-face ((t (:foreground "yellow"))))
     (undo-tree-visualizer-default-face ((t (:foreground "gray"))))
     (undo-tree-visualizer-current-face ((t (:foreground "red"))))
     (undo-tree-visualizer-active-branch-face ((t (:bold t :foreground "white" :weight bold))))
     (underline ((t (:underline nil))))
     (trailing-whitespace ((t (:background "red1"))))
     (tooltip ((t (:background "systeminfowindow" :foreground "systeminfotext" :family "Sans Serif"))))
     (tool-tips ((t (:background "lightyellow" :foreground "black" :family "Sans Serif"))))
     (tool-bar ((t (nil))))
     (text-cursor ((t (:background "yellow" :foreground "black"))))
     (tabbar-unselected-face ((t (:background "gray30" :foreground "gray70" :box (:line-width 2 :color "gray30") :height 0.8 :family "Cambria"))))
     (tabbar-separator-face ((t (:background "gray30" :foreground "gray70" :height 0.16000000000000003 :family "Cambria"))))
     (tabbar-selected-face ((t (:bold t :background "#A6E22A" :foreground "black" :box (:line-width 1 :color "#B0FF2A") :weight bold :height 100 :family "Cambria"))))
     (tabbar-default-face ((t (:background "gray30" :foreground "gray70" :height 0.8 :family "Cambria"))))
     (tabbar-button-face ((t (:background "gray30" :foreground "dark red" :box (:line-width 1 :color "gray30") :height 0.8 :family "Cambria"))))
     (success ((t (:bold t :foreground "Green1" :weight bold))))
     (speedbar-tag-face ((t (:foreground "#f57900"))))
     (speedbar-separator-face ((t (:background "firebrick" :foreground "tan1"))))
     (speedbar-selected-face ((t (:foreground "red" :underline t))))
     (speedbar-highlight-face ((t (:background "gray30"))))
     (speedbar-file-face ((t (:foreground "burlywood1"))))
     (speedbar-directory-face ((t (:foreground "NavajoWhite1"))))
     (speedbar-button-face ((t (:foreground "tan1"))))
     (show-paren-mismatch-face ((t (:background "Red" :foreground "White"))))
     (show-paren-mismatch ((t (:background "#ad7fa8" :foreground "#2e3436"))))
     (show-paren-match-face ((t (:background "Aquamarine" :foreground "SlateBlue"))))
     (show-paren-match ((t (:background "#73d216" :foreground "#2e3436"))))
     (shadow ((t (:foreground "grey70"))))
     (secondary-selection ((t (:background "darkslateblue"))))
     (scroll-bar ((t (:foreground "systemscrollbar"))))
     (right-margin ((t (nil))))
     (region ((t (:background "blue" :foreground "tan1"))))
     (red ((t (:foreground "red"))))
     (query-replace ((t (:background "#f57900" :foreground "#2e3436"))))
     (qt-classes-face ((t (:foreground "Red"))))
     (pulldown-default-selection-face ((t (:background "steelblue" :foreground "white"))))
     (pulldown-default-face ((t (:background "lightgray" :foreground "black" :underline "darkgray"))))
     (primary-selection ((t (:background "blue"))))
     (popup-tip-face ((t (:background "khaki1" :foreground "black"))))
     (popup-scroll-bar-foreground-face ((t (:background "black"))))
     (popup-scroll-bar-background-face ((t (:background "gray"))))
     (popup-menu-selection-face ((t (:background "steelblue" :foreground "white"))))
     (popup-menu-face ((t (:background "lightgray" :foreground "black"))))
     (popup-isearch-match ((t (:background "sky blue"))))
     (popup-face ((t (:background "lightgray" :foreground "black"))))
     (pointer ((t (nil))))
     (p4-diff-ins-face ((t (:foreground "blue"))))
     (p4-diff-head-face ((t (:background "gray95"))))
     (p4-diff-file-face ((t (:background "gray90"))))
     (p4-diff-del-face ((t (:foreground "red"))))
     (p4-diff-change-face ((t (:foreground "dark green"))))
     (p4-depot-unmapped-face ((t (:foreground "grey30"))))
     (p4-depot-deleted-face ((t (:foreground "red"))))
     (p4-depot-added-face ((t (:foreground "blue"))))
     (org-verse ((t (:italic t :foreground "#bbbbbc" :slant italic))))
     (org-verbatim ((t (:italic t :foreground "#eeeeec" :underline t :slant italic))))
     (org-todo ((t (:bold t :foreground "Red" :weight bold))))
     (org-special-keyword ((t (:foreground "brown"))))
     (org-quote ((t (:italic t :foreground "#bbbbbc" :slant italic))))
     (org-link ((t (:background "#2e3436" :foreground "skyblue2"))))
     (org-level-4 ((t (:bold t :foreground "tomato" :weight bold :height 1.0))))
     (org-level-3 ((t (:bold t :foreground "#edd400" :weight bold :height 1.1))))
     (org-level-2 ((t (:bold t :foreground "#6ac214" :weight bold :height 1.2))))
     (org-level-1 ((t (:bold t :foreground "dodger blue" :weight bold :height 1.5))))
     (org-hide ((t (:foreground "#2e3436"))))
     (org-footnote ((t (:foreground "magenta3" :underline t))))
     (org-done ((t (:bold t :foreground "ForestGreen" :weight bold))))
     (org-date ((t (:foreground "magenta3" :underline t))))
     (org-block ((t (:foreground "#bbbbbc"))))
     (one-key-title ((t (:foreground "Gold"))))
     (one-key-prompt ((t (:foreground "khaki3"))))
     (one-key-keystroke ((t (:foreground "DarkRed"))))
     (nobreak-space ((t (:foreground "cyan" :underline t))))
     (next-error ((t (:background "dark slate blue" :foreground "black"))))
     (mouse ((t (:background "#8ae234"))))
     (modeline-mousable-minor-mode ((t (:background "DarkRed" :foreground "white"))))
     (modeline-mousable ((t (:background "DarkRed" :foreground "white"))))
     (mode-line-inactive ((t (:background "#555753" :foreground "#bbbbbc" :box (:line-width 1 :color "grey40") :weight light))))
     (mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
     (mode-line-emphasis ((t (:bold t :weight bold))))
     (mode-line-buffer-id ((t (:bold t :background "DarkRed" :foreground "white" :weight bold))))
     (mode-line ((t (:background "DarkRed" :foreground "white" :box (:line-width 1 :style released-button)))))
     (minibuffer-prompt ((t (:bold t :foreground "#729fcf" :weight bold))))
     (message-separator-face ((t (:foreground "blue3"))))
     (message-separator ((t (:foreground "LightSkyBlue1"))))
     (message-mml-face ((t (:bold t :foreground "Green3" :weight bold))))
     (message-mml ((t (:foreground "MediumSpringGreen"))))
     (message-header-xheader-face ((t (:bold t :foreground "light blue" :weight bold))))
     (message-header-xheader ((t (:foreground "DeepSkyBlue1"))))
     (message-header-to-face ((t (:bold t :foreground "cadetblue" :weight bold))))
     (message-header-to ((t (:foreground "white"))))
     (message-header-subject-face ((t (:bold t :foreground "yellow" :weight bold))))
     (message-header-subject ((t (:foreground "white"))))
     (message-header-other-face ((t (:bold t :foreground "chocolate" :weight bold))))
     (message-header-other ((t (:foreground "VioletRed1"))))
     (message-header-newsgroups-face ((t (:italic t :bold t :foreground "violet" :slant italic :weight bold))))
     (message-header-newsgroups ((t (:italic t :bold t :foreground "yellow" :slant italic :weight bold))))
     (message-header-name-face ((t (:bold t :foreground "orange" :weight bold))))
     (message-header-name ((t (:foreground "green"))))
     (message-header-cc-face ((t (:bold t :foreground "green4" :weight bold))))
     (message-header-cc ((t (:foreground "white"))))
     (message-cited-text-face ((t (:bold t :foreground "green" :weight bold))))
     (message-cited-text ((t (:foreground "#edd400"))))
     (menu ((t (:foreground "systemmenu" :background "systemmenutext"))))
     (match ((t (:bold t :background "#e9b96e" :foreground "#2e3436" :weight bold))))
     (list-mode-item-selected ((t (:background "gray68" :foreground "white"))))
     (linum ((t (:background "#1A1A1A" :foreground "#505050"))))
     (link-visited ((t (:foreground "violet" :underline t))))
     (link ((t (:foreground "dodger blue" :underline t))))
     (left-margin ((t (nil))))
     (lazy-highlight ((t (:background "#e9b96e" :foreground "#2e3436"))))
     (italic ((t (nil))))
     (isearch-secondary ((t (:foreground "red3"))))
     (isearch-fail ((t (:background "red4"))))
     (isearch ((t (:background "blue" :foreground "#2e3436"))))
     (info-xref-visited ((t (:foreground "#ad7fa8"))))
     (info-xref ((t (:foreground "DodgerBlue1" :underline t))))
     (info-node ((t (:bold t :foreground "DodgerBlue1" :underline t :weight bold))))
     (info-menu-5 ((t (:underline t))))
     (ido-virtual ((t (:foreground "#4DB68E"))))
     (ido-subdir ((t (:foreground "red1"))))
     (ido-only-match ((t (:foreground "ForestGreen"))))
     (ido-indicator ((t (:background "red1" :foreground "yellow1" :width condensed))))
     (ido-incomplete-regexp ((t (:bold t :foreground "#f57900" :weight bold))))
     (ido-first-match ((t (:bold t :weight bold))))
     (ibuffer-group-face ((t (:bold t :foreground "#F1266F" :weight bold :height 1.65))))
     (holiday-face ((t (:background "DimGray"))))
     (hl-paren-face ((t (:bold t :weight bold :width expanded))))
     (hl-line ((t (:background "brown4"))))
     (highline-face ((t (:background "SeaGreen"))))
     (highlight-symbol-face ((t (:background "gray30"))))
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
     (gui-element ((t (:background "#D4D0C8" :foreground "black"))))
     (gui-button-face ((t (:background "grey75" :foreground "black"))))
     (green ((t (:foreground "green"))))
     (glyphless-char ((t (:height 0.6))))
     (fs-line-face ((t (:foreground "green" :underline nil :weight normal))))
     (fs-file-name-mouse-move-facese ((t (:bold t :background "red" :foreground "yellow" :weight bold))))
     (fs-file-name-mouse-face ((t (:background "yellow"))))
     (fs-file-name-face ((t (:bold t :foreground "red" :underline t :weight bold))))
     (fringe ((t (:background "grey10"))))
     (font-lock-warning-face ((t (:bold t :foreground "Pink" :weight bold))))
     (font-lock-variable-name-face ((t (:foreground "#6AE452"))))
     (font-lock-type-face ((t (:foreground "#E20C0C"))))
     (font-lock-string-face ((t (:foreground "#D63724"))))
     (font-lock-regexp-grouping-construct ((t (:bold t :weight bold :underline nil :underline nil :weight))))
     (font-lock-regexp-grouping-backslash ((t (:bold t :weight bold :underline nil :underline nil :weight))))
     (font-lock-reference-face ((t (:foreground "SlateBlue"))))
     (font-lock-preprocessor-face ((t (:foreground "Aquamarine"))))
     (font-lock-negation-char-face ((t (nil))))
     (font-lock-keyword-face ((t (:foreground "#FF8D00"))))
     (font-lock-function-name-face ((t (:foreground "#9BF60E"))))
     (font-lock-doc-string-face ((t (:foreground "#D63724"))))
     (font-lock-doc-face ((t (:foreground "#888a85"))))
     (font-lock-constant-face ((t (:foreground "#0CCC2A"))))
     (font-lock-comment-face ((t (:foreground "grey40"))))
     (font-lock-comment-delimiter-face ((t (:foreground "red"))))
     (font-lock-builtin-face ((t (:foreground "#4DB68E"))))
     (fl-type-face ((t (:foreground "yellow"))))
     (fl-string-face ((t (:foreground "green"))))
     (fl-keyword-face ((t (:foreground "cadetblue"))))
     (fl-function-name-face ((t (:foreground "red"))))
     (fl-doc-string-face ((t (:foreground "purple"))))
     (fl-comment-face ((t (:foreground "pink"))))
     (fixed-pitch ((t (:family "Monospace"))))
     (file-name-shadow ((t (:foreground "grey70"))))
     (ffap ((t (:background "darkolivegreen"))))
     (expander-face ((t (:background "darkblue" :foreground "white"))))
     (evil-ex-substitute ((t (:foreground "red" :underline t))))
     (evil-ex-search ((t (:background "blue" :foreground "#2e3436"))))
     (evil-ex-lazy-highlight ((t (:background "#e9b96e" :foreground "#2e3436"))))
     (evil-ex-info ((t (:italic t :foreground "red" :slant italic))))
     (eshell-prompt-face ((t (:foreground "MediumAquamarine"))))
     (eshell-ls-unreadable-face ((t (:foreground "DimGray"))))
     (eshell-ls-symlink-face ((t (:bold t :foreground "White" :weight bold))))
     (eshell-ls-special-face ((t (:bold t :foreground "Gold" :weight bold))))
     (eshell-ls-readonly-face ((t (:foreground "Aquamarine"))))
     (eshell-ls-product-face ((t (:foreground "sandybrown"))))
     (eshell-ls-picture-face ((t (:foreground "Violet"))))
     (eshell-ls-missing-face ((t (:bold t :foreground "black" :weight bold))))
     (eshell-ls-executable-face ((t (:bold t :foreground "Coral" :weight bold))))
     (eshell-ls-directory-face ((t (:bold t :foreground "MediumSlateBlue" :weight bold))))
     (eshell-ls-clutter-face ((t (:bold t :foreground "DimGray" :weight bold))))
     (eshell-ls-backup-face ((t (:foreground "Grey"))))
     (eshell-ls-archive-face ((t (:bold t :foreground "IndianRed" :weight bold))))
     (escape-glyph ((t (:foreground "cyan"))))
     (error ((t (:bold t :foreground "Pink" :weight bold))))
     (erc-underline-face ((t (:underline t))))
     (erc-prompt-face ((t (:foreground "MediumAquamarine"))))
     (erc-pal-face ((t (:foreground "pale green"))))
     (erc-notice-face ((t (:foreground "MediumAquamarine"))))
     (erc-inverse-face ((t (:background "wheat" :foreground "darkslategrey"))))
     (erc-input-face ((t (:foreground "Beige"))))
     (erc-error-face ((t (:bold t :foreground "IndianRed" :weight bold))))
     (erc-direct-msg-face ((t (:foreground "sandybrown"))))
     (erc-default-face ((t (nil))))
     (erc-bold-face ((t (:bold t :weight bold))))
     (erc-action-face ((t (:bold t :weight bold))))
     (epa-validity-medium ((t (:italic t :foreground "PaleTurquoise" :slant italic))))
     (epa-validity-low ((t (:italic t :slant italic))))
     (epa-validity-high ((t (:bold t :foreground "PaleTurquoise" :weight bold))))
     (epa-validity-disabled ((t (:italic t :slant italic))))
     (epa-string ((t (:foreground "lightyellow"))))
     (epa-mark ((t (:bold t :foreground "orange" :weight bold))))
     (epa-field-name ((t (:bold t :foreground "PaleTurquoise" :weight bold))))
     (epa-field-body ((t (:italic t :foreground "turquoise" :slant italic))))
     (dropdown-list-selection-face ((t (:background "purple" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "DejaVu Sans Mono"))))
     (dropdown-list-face ((t (:background "lightyellow" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "DejaVu Sans Mono"))))
     (dired-warning ((t (:bold t :foreground "#f57900" :weight bold))))
     (dired-symlink ((t (:bold t :foreground "tan2" :weight bold))))
     (dired-perm-write ((t (:background "black" :foreground "NavajoWhite" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "DejaVu Sans Mono"))))
     (dired-marked ((t (:bold t :foreground "#f57900" :weight bold))))
     (dired-mark ((t (:foreground "salmon1"))))
     (dired-ignored ((t (:foreground "grey70"))))
     (dired-header ((t (:bold t :foreground "firebrick" :weight bold))))
     (dired-flagged ((t (:bold t :foreground "#f57900" :weight bold))))
     (dired-directory ((t (:bold t :foreground "firebrick2" :weight bold))))
     (diary-face ((t (:bold t :foreground "IndianRed" :weight bold))))
     (custom-visibility ((t (:foreground "dodger blue" :underline t :height 0.8))))
     (custom-variable-tag-face ((t (:bold t :foreground "#edd400" :weight bold :height 1.1))))
     (custom-variable-tag ((t (:bold t :foreground "#edd400" :weight bold :height 1.1))))
     (custom-variable-button-face ((t (:background "grey50" :foreground "black" :box (:line-width 1 :style released-button)))))
     (custom-variable-button ((t (:background "grey50" :foreground "black" :box (:line-width 1 :style released-button)))))
     (custom-themed ((t (:background "blue1" :foreground "white"))))
     (custom-state-face ((t (:foreground "lime green"))))
     (custom-state ((t (:foreground "lime green"))))
     (custom-set-face ((t (:background "white" :foreground "blue1"))))
     (custom-set ((t (:background "white" :foreground "blue1"))))
     (custom-saved-face ((t (:underline t))))
     (custom-saved ((t (:underline t))))
     (custom-rogue-face ((t (:background "black" :foreground "pink"))))
     (custom-rogue ((t (:background "black" :foreground "pink"))))
     (custom-modified-face ((t (:background "blue1" :foreground "white"))))
     (custom-modified ((t (:background "blue1" :foreground "white"))))
     (custom-link ((t (:foreground "dodger blue" :underline t))))
     (custom-invalid-face ((t (:background "red1" :foreground "yellow1"))))
     (custom-invalid ((t (:background "red1" :foreground "yellow1"))))
     (custom-group-tag-face-1 ((t (:bold t :foreground "pink" :weight bold :height 1.2 :family "Sans Serif"))))
     (custom-group-tag-face ((t (:bold t :foreground "#edd400" :weight bold :height 1.3))))
     (custom-group-tag-1 ((t (:bold t :foreground "pink" :weight bold :height 1.2 :family "Sans Serif"))))
     (custom-group-tag ((t (:bold t :foreground "#edd400" :weight bold :height 1.3))))
     (custom-face-tag-face ((t (:bold t :foreground "#edd400" :weight bold :height 1.1))))
     (custom-face-tag ((t (:bold t :foreground "#edd400" :weight bold :height 1.1))))
     (custom-documentation-face ((t (:italic t :slant italic))))
     (custom-documentation ((t (:italic t :slant italic))))
     (custom-comment-tag ((t (:foreground "gray80"))))
     (custom-comment ((t (:background "dim gray"))))
     (custom-changed-face ((t (:background "blue1" :foreground "white"))))
     (custom-changed ((t (:background "blue1" :foreground "white"))))
     (custom-button-unraised ((t (:background "grey50" :foreground "black"))))
     (custom-button-pressed-unraised ((t (:background "grey50" :foreground "violet"))))
     (custom-button-pressed ((t (:background "grey50" :foreground "black" :box (:style pressed-button)))))
     (custom-button-mouse-unraised ((t (:background "grey60" :foreground "black"))))
     (custom-button-mouse-pressed-unraised ((t (:background "grey60" :foreground "black"))))
     (custom-button-mouse ((t (:background "grey60" :foreground "black" :box (:line-width 1 :style released-button)))))
     (custom-button-face ((t (:background "grey50" :foreground "black" :box (:line-width 1 :style released-button)))))
     (custom-button ((t (:background "grey50" :foreground "black" :box (:line-width 1 :style released-button)))))
     (cursor ((t (:background "yellow"))))
     (cua-rectangle-noselect ((t (:background "dimgray" :foreground "white"))))
     (cua-rectangle ((t (:background "maroon" :foreground "white"))))
     (cua-global-mark ((t (:background "yellow1" :foreground "black"))))
     (cperl-nonoverridable-face ((t (:foreground "SkyBlue"))))
     (cperl-hash-face ((t (:foreground "darkseagreen"))))
     (cperl-array-face ((t (:foreground "darkseagreen"))))
     (completions-first-difference ((t (:bold t :weight bold :underline nil :underline nil :weight))))
     (completions-common-part ((t (:underline nil :overline nil :strike-through nil :box nil :inverse-video nil :stipple nil :background "#2e3436" :foreground "#eeeeec" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "DejaVu Sans Mono"))))
     (completions-annotations ((t (:underline nil))))
     (comint-highlight-prompt ((t (:foreground "#8ae234"))))
     (comint-highlight-input ((t (:italic t :bold t :slant italic :weight bold))))
     (calendar-today-face ((t (:underline t))))
     (c-nonbreakable-space-face ((t (:bold t :background "#f57900" :weight bold))))
     (button ((t (:foreground "dodger blue" :underline t))))
     (buffers-tab ((t (:background "black" :foreground "white"))))
     (buffer-menu-buffer ((t (:bold t :weight bold))))
     (border-glyph ((t (nil))))
     (border ((t (:background "black"))))
     (bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
     (bold ((t (:bold t :underline nil :weight bold))))
     (blue ((t (:foreground "blue"))))
     (anything-header ((t (:bold t :background "grey15" :foreground "#edd400" :weight bold))))
     (ac-yasnippet-selection-face ((t (:background "coral3" :foreground "white"))))
     (ac-yasnippet-candidate-face ((t (:background "sandybrown" :foreground "black"))))
     (ac-selection-face ((t (:background "blue" :foreground "white"))))
     (ac-gtags-selection-face ((t (:background "navy" :foreground "white"))))
     (ac-gtags-candidate-face ((t (:background "lightgray" :foreground "navy"))))
     (ac-etags-selection-face ((t (:background "deep sky blue" :foreground "white"))))
     (ac-etags-candidate-face ((t (:background "gainsboro" :foreground "deep sky blue"))))
     (ac-completion-face ((t (:background "darkblue" :foreground "white"))))
     (ac-candidate-face ((t (:background "lightgray" :foreground "black"))))
     (default ((t (:stipple nil :background "black" :foreground "White" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "outline" :family "DejaVu Sans Mono")))))))
(provide 'color-theme-luolE-darkrose)
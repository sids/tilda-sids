(eval-when-compile    (require 'color-theme))

(defun color-theme-sids ()
  "Color theme 'sids', based on color theme 'wombat', created 2009-06-23."
  (interactive)

  (let ((*normal*       "#F6F3E8")
        (*background*   "#34393E") ;;2E3436, wombat: #242424
	(*border*       "#888a85")
        (*cursor*       "#AA3333") ;;wombat: #656565
        (*mouse*        "#333333")
        (*region*       "#333366")
        (*current-line* "#111111") ;; darkolivegreen
        (*string*       "#FFB774") ;; A8FF60, #cae682, wombat: #95e454
        (*keyword*      "#8ac6f2") ;; wombar: #8ac6f2
        (*method*       "#ca6642") ;; FFB774, wombat: #cae682
        (*comment*      "#7CAC7C") ;; wombat: #99968b
        (*constant*     "#99CC99") ;; wombat: #e5786d
        (*red*          "#FF6C60")
        (*operator*     "#FFFFFF")
        (*class*        "#FFFFB6")
        (*variable*     "#cae682") ;; C6C5FE, womba: #cae682
	(*builtin*      "#8ac6f2")) ;; 4aa6f2

    (color-theme-install
     `(color-theme-sids

       ((background-color . ,*background*)
	(background-mode  . dark)
	(border-color     . ,*border*)
	(cursor-color     . ,*cursor*)
	(foreground-color . ,*normal*)
	(mouse-color      . ,*mouse*))

       ;; apropos
       ((apropos-keybinding-face		. underline)
	(apropos-label-face italic variable-pitch)
	(apropos-match-face			. match)
	(apropos-property-face			. bold-italic)
	(apropos-symbol-face			. bold)
	(compilation-message-face		. underline)
	(list-matching-lines-buffer-name-face	. underline)
	(list-matching-lines-face		. match)
	(view-highlight-face			. highlight)
	(widget-mouse-face			. highlight))

       (font-lock-builtin-face ((t (:foreground ,*builtin*))))
       (font-lock-comment-delimiter-face ((t (:italic t :slant italic :foreground ,*comment*))))
       (font-lock-comment-face ((t (:italic t :foreground ,*comment* :slant italic))))
       (font-lock-constant-face ((t (:foreground ,*constant*))))
       (font-lock-doc-face ((t (:italic t :foreground ,*comment* :slant italic))))
       (font-lock-function-name-face ((t (:foreground ,*method*))))
       (font-lock-keyword-face ((t (:foreground ,*keyword*))))
       (font-lock-negation-char-face ((t (:foreground "#e7f6da"))))
       (font-lock-preprocessor-face ((t (:foreground "#e5786d"))))
       (font-lock-regexp-grouping-backslash ((t (:bold t :weight bold))))
       (font-lock-regexp-grouping-construct ((t (:bold t :weight bold))))
       (font-lock-string-face ((t (:foreground ,*string*))))
       (font-lock-type-face ((t (:foreground "#cae682"))))
       (font-lock-variable-name-face ((t (:foreground ,*variable*))))
       (font-lock-warning-face ((t (:bold t :foreground "#cc0000" :weight bold))))

       (cursor ((t (:background ,*cursor*))))

       (default ((t (:stipple nil
		     :background ,*background*
		     :foreground ,*normal*
		     :inverse-video nil
		     :box nil
		     :strike-through nil
		     :overline nil
		     :underline nil
		     :slant normal
		     :weight normal
		     ;:height 98
		     ;:width normal
		     ;:foundry "outline"
		     ;:family "Courier New"
		     ))))

       ;; completions
       (completions-common-part ((t (;:family "Courier New"
				     ;:foundry "outline"
				     :width normal
				     :weight normal
				     :slant normal
				     :underline nil
				     :overline nil
				     :strike-through nil
				     :box nil
				     :inverse-video nil
				     :foreground ,*comment*
				     :background ,*background*
				     :stipple nil
				     ;:height 98
				     ))))
       (completions-first-difference ((t (:bold t :weight bold))))

       (bold ((t (:bold t :weight bold))))
       (italic ((t (:italic t :slant italic))))
       (bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
       (underline ((t (:underline t))))

       (highlight ((t (:background ,*current-line*))))
       (lazy-highlight ((t (:background "yellow" :foreground "black"))))

       (region ((t (:background "#444444" :foreground "#f6f3e8"))))
       (secondary-selection ((t (:background "SkyBlue4"))))

       (isearch ((t (:background "#f57900" :foreground "#2e3436"))))
       (isearch-fail ((t (:background "red4"))))
       (iswitchb-current-match ((t (:foreground "#cae682"))))
       (iswitchb-invalid-regexp ((t (:bold t :weight bold :foreground "#cc0000"))))
       (iswitchb-single-match ((t (:italic t :slant italic :foreground "#99968b"))))
       (iswitchb-virtual-matches ((t (:foreground "#8ac6f2"))))
       (match ((t (:background "RoyalBlue3"))))
       (query-replace ((t (:foreground "#2e3436" :background "#f57900"))))

       (next-error ((t (:foreground "#f6f3e8" :background "#444444"))))

       (paren-face-match ((t (:foreground "#eeeeec" :background "#729fcf"))))
       (paren-face-match-light ((t (:foreground "#eeeeec" :background "#729fcf"))))
       (paren-face-mismatch ((t (:foreground "#2e3436" :background "#ad7fa8"))))
       (show-paren-match ((t (:background "#729fcf" :foreground "#eeeeec"))))
       (show-paren-mismatch ((t (:background "#ad7fa8" :foreground "#2e3436"))))

       (menu ((t (:foreground "systemmenu" :background "systemmenutext"))))
       (tool-bar ((t (:background "systembuttonface" :foreground "systembuttontext" :box (:line-width 1 :style released-button)))))
       (border ((t (:background "#888a85"))))
       (vertical-border ((t (nil))))
       (scroll-bar ((t (:foreground "systemscrollbar"))))
       (mouse ((t (:background "#333333"))))
       (tooltip ((t (:family "Sans Serif" :background "systeminfowindow" :foreground "systeminfotext"))))
       (buffer-menu-buffer ((t (:bold t :weight bold))))
       (mode-line-inactive ((t (:background "#222222" :foreground "#cccddd"))))

       (mode-line ((t (:background "#111111" :foreground "#eeeeec"))))
       (mode-line-buffer-id ((t (:bold t :weight bold))))
       (mode-line-emphasis ((t (:bold t :weight bold))))
       (mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
       (mode-line-inactive ((t (:background "#666666" :foreground "#cccddd"))))

       (minibuffer-noticeable-prompt ((t (nil))))
       (minibuffer-prompt ((t (:foreground "#729fcf"))))
       (fringe ((t (:background "grey10"))))

       (button ((t (:underline t))))

       ;; compilation
       (compilation-error ((t (:bold t :weight bold :foreground "#cc0000"))))
       (compilation-info ((t (:bold t :foreground "Green1" :weight bold))))
       (compilation-line-number ((t (:foreground "#cae682"))))
       (compilation-warning ((t (:bold t :foreground "Orange" :weight bold))))

       ;; shell
       (comint-highlight-input ((t (:italic t :bold t :slant italic :weight bold))))
       (comint-highlight-prompt ((t (:foreground "#8ae234"))))
       (compilation-column-number ((t (:foreground "#cae682"))))

       ;; dired
       (dired-directory ((t (:foreground "#cae682"))))
       (dired-flagged ((t (:bold t :weight bold :foreground "#cc0000"))))
       (dired-header ((t (:foreground "#cae682"))))
       (dired-ignored ((t (:foreground "grey70"))))
       (dired-mark ((t (:foreground "#e5786d"))))
       (dired-marked ((t (:bold t :weight bold :foreground "#cc0000"))))
       (dired-perm-write ((t (:family "Courier New" :foundry "outline" :width normal :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "#f6f3e8" :background "#242424" :stipple nil :height 98))))
       (dired-symlink ((t (:foreground "#8ac6f2"))))
       (dired-warning ((t (:bold t :weight bold :foreground "#cc0000"))))

       ;; org-mode
       (org-date ((t (:foreground "LightSteelBlue" :underline t))))
       (org-hide ((t (:foreground "#2e3436"))))
       (org-level-1 ((t (:foreground "#cae682"))))
       (org-level-2 ((t (:foreground "#cae682"))))
       (org-level-3 ((t (:foreground "#8ac6f2"))))
       (org-level-4 ((t (:italic t :slant italic :foreground "#95e454"))))
       (org-level-5 ((t (:foreground "#e5786d"))))
       (org-todo ((t (:bold t :foreground "#8ac6f2" :weight bold))))

     (escape-glyph ((t (:foreground "cyan"))))
     (file-name-shadow ((t (:foreground "grey70"))))
     (fixed-pitch ((t (:family "Monospace"))))

     (header-line ((t (:background "grey20" :foreground "grey90" :box nil))))
     (help-argument-name ((t (:italic t :slant italic))))

     (info-xref ((t (:foreground "#729fcf"))))
     (info-xref-visited ((t (:foreground "#ad7fa8"))))

     (link ((t (:bold t :foreground "#8ac6f2" :underline t :weight bold))))
     (link-visited ((t (:bold t :weight bold :underline t :foreground "violet"))))

     (nobreak-space ((t (:foreground "cyan" :underline t))))
     (persp-selected-face ((t (:foreground "#729fcf"))))
     (sgml-namespace ((t (:foreground "#8ac6f2"))))
     (shadow ((t (:foreground "grey70"))))
     (tmm-inactive ((t (:foreground "grey70"))))
     (trailing-whitespace ((t (:background "red1"))))
     (variable-pitch ((t (:family "Sans Serif"))))

     (widget-button ((t (:bold t :weight bold))))
     (widget-button-pressed ((t (:foreground "red1"))))
     (widget-documentation ((t (:foreground "lime green"))))
     (widget-field ((t (:background "dim gray"))))
     (widget-inactive ((t (:foreground "grey70"))))
     (widget-single-line-field ((t (:background "dim gray"))))))
))

(add-to-list 'color-themes '(color-theme-sids  ""))

(provide 'color-theme-sids)

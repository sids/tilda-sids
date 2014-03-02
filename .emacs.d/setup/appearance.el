;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Appearance
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'cyberpunk t)

;; Hint: execute the following command and it'll print the current font settings
;; (insert "\n(set-default-font \"" (cdr (assoc 'font (frame-parameters))) "\")\n")

;(set-face-attribute 'default nil :family "DejaVu Sans Mono" :height 120 :weight 'normal)
;(set-face-attribute 'default nil :family "Bitstream Vera Sans Mono" :height 120 :weight 'normal)
;(set-face-attribute 'default nil :family "Anonymous_Pro" :height 140 :weight 'normal)
;(set-frame-font "-apple-Anonymous_Pro-medium-normal-normal-*-14-*-*-*-m-0-iso10646-1")
;(set-face-attribute 'default nil  :family "Inconsolata" :height 140 :weight 'normal)
(set-face-attribute 'default nil :family "Droid Sans Mono" :height 120 :weight 'normal)

(set-background-color "#1a1a1e")

(setq-default cursor-type 'bar)
(set-cursor-color "Red")

(show-paren-mode)
(set-face-background 'show-paren-match-face (face-background 'default))
(set-face-foreground 'show-paren-match-face "LightSeaGreen")
(set-face-attribute 'show-paren-match-face nil :weight 'extra-bold)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Highlighting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-hl-line-mode 1)
(hl-line-mode)
(set-face-background hl-line-face "#0a0a0e")

;; Search highlighting
(setq isearch-highlight t)
(setq search-highlight t)
(setq lazy-highlight-cleanup nil)
(global-set-key (kbd "C-x C-h") 'lazy-highlight-cleanup)

;; disabled highlight-symbol-mode because it is interfering
;; with syntax highlighting in coder-repl buffer
;(if (require 'highlight-symbol nil 'noerror)
;  (highlight-symbol-mode t)
;  (global-set-key [(meta f3)] 'highlight-symbol-at-point)
;  (global-set-key [f3] 'highlight-symbol-next)
;  (global-set-key [(shift f3)] 'highlight-symbol-prev)
;  (global-set-key [(control meta f3)] 'highlight-symbol-query-replace))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mode-specific appearance
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(if (boundp 'highlight-parentheses)
  (setq hl-paren-colors '("SandyBrown" "SaddleBrown" "RosyBrown")))

(defcustom highlight-symbol-colors
  '("#2b2b2b" "#383838" "#4f4f4f" "#5f5f5f" "#6f6f6f")
  "*Colors used by `highlight-symbol-at-point'.
highlighting the symbols will use these colors in order."
  :type '(repeat color)
  :group 'highlight-symbol)

(if (boundp 'auto-complete)
  (set-face-background 'ac-completion-face nil))


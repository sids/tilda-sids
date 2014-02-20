;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Appearance
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'cyberpunk t)

(set-face-attribute 'default nil
                    :family "DejaVu Sans Mono" :height 120 :weight 'normal)
(set-face-attribute 'default nil
                    :family "Bitstream Vera Sans Mono" :height 120 :weight 'normal)
(set-face-attribute 'default nil
                    :family "Anonymous_Pro" :height 140 :weight 'normal)
(set-face-attribute 'default nil
                    :family "Droid Sans Mono" :height 120 :weight 'normal)
(set-face-attribute 'default nil
                    :family "Inconsolata" :height 140 :weight 'normal)

;; execute the following command and it'll print the current font settings
;; (insert "\n(set-default-font \"" (cdr (assoc 'font (frame-parameters))) "\")\n")
(set-default-font "-apple-Anonymous_Pro-medium-normal-normal-*-14-*-*-*-m-0-iso10646-1")


(set-background-color "#1a1a1e")

(setq-default cursor-type 'bar)
(set-cursor-color "Red")

(require 'auto-complete)
(set-face-background 'ac-completion-face nil)

(require 'hl-line)
(set-face-background hl-line-face "#0a0a0e")

(require 'paren)
(set-face-background 'show-paren-match-face (face-background 'default))
(set-face-foreground 'show-paren-match-face "LightSeaGreen")
(set-face-attribute 'show-paren-match-face nil :weight 'extra-bold)

(require 'highlight-parentheses)
(setq hl-paren-colors '("SandyBrown" "SaddleBrown" "RosyBrown"))

(defcustom highlight-symbol-colors
  '("#2b2b2b" "#383838" "#4f4f4f" "#5f5f5f" "#6f6f6f")
  "*Colors used by `highlight-symbol-at-point'.
highlighting the symbols will use these colors in order."
  :type '(repeat color)
  :group 'highlight-symbol)




;;(load-library "my-color-theme")
;;(my-color-theme)

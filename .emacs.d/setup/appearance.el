;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Appearance
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'cyberpunk t)

(set-face-attribute 'default nil
                    :family "DejaVu Sans Mono" :height 115 :weight 'normal)
;;(setq mac-allow-anti-aliasing 1)

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

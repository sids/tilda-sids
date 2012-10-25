;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Appearance
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'cyberpunk t)

(set-face-background 'ac-completion-face nil)
(set-face-background 'hl-line-face "#1a1a1a")
(defcustom highlight-symbol-colors
  '("#2b2b2b" "#383838" "#4f4f4f" "#5f5f5f" "#6f6f6f")
  "*Colors used by `highlight-symbol-at-point'.
highlighting the symbols will use these colors in order."
  :type '(repeat color)
  :group 'highlight-symbol)


(setq mac-allow-anti-aliasing 1)
(set-face-attribute 'default nil
                    :family "DejaVu Sans Mono" :height 115 :weight 'normal)


;;(load-library "my-color-theme")
;;(my-color-theme)

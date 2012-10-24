;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Appearance
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'cyberpunk t)

(setq mac-allow-anti-aliasing 1)
(set-face-attribute 'default nil
                    :family "DejaVu Sans Mono" :height 115 :weight 'normal)

;;(load-library "my-color-theme")
;;(my-color-theme)

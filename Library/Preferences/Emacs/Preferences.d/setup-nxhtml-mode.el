;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; nxhtml-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load-library "nxhtml/autostart.el")
(add-hook 'nxhtml-mode-hook
	  (lambda ()
	    (setq tab-width 4)
	    (set-face-background 'mumamo-background-chunk-major nil)
	    (set-face-background 'mumamo-background-chunk-submode1 nil)
	    (set-face-background 'mumamo-background-chunk-submode2 nil)
	    (set-face-background 'mumamo-background-chunk-submode3 nil)
	    (set-face-background 'mumamo-background-chunk-submode4 nil)))

(add-hook 'php-mode-hook
	  (lambda ()
	    (setq tab-width 4)
	    (set-face-background 'mumamo-background-chunk-major nil)
	    (set-face-background 'mumamo-background-chunk-submode1 nil)
	    (set-face-background 'mumamo-background-chunk-submode2 nil)
	    (set-face-background 'mumamo-background-chunk-submode3 nil)
	    (set-face-background 'mumamo-background-chunk-submode4 nil)))

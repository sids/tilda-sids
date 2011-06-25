;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; php-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'php-mode-hook
	  (lambda ()
	    (setq tab-width 4
		  c-basic-offset 4
		  indent-tabs-mode 1)
	    (define-key php-mode-map (kbd "RET") 'newline-and-indent)
	    (highlight-symbol-mode 1)
	    (add-to-list 'byte-compile-not-obsolete-vars
			 'font-lock-beginning-of-syntax-function)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; java-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'java-mode-hook
	  (lambda ()
	    (setq c-basic-offset 4
		  indent-tabs-mode nil)
	    (define-key java-mode-map (kbd "RET") 'newline-and-indent)
	    (highlight-symbol-mode 1)
	    (setq paragraph-start "^\\s-*\\#\\s-*\\\\\\(@\\).*$")))


(defun javadoc-method-comment ()
  ;; Insert a javadoc method comment at the cursor position
  (interactive)
  (insert
   "/**
 *
 *
 *
 *
 * @param
 * @return
 * @exeption
 * @see
 */
")/
  (previous-line 8)
  (end-of-line))


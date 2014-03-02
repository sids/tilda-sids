;; KeyboardMacrosTricks:
;; http://www.emacswiki.org/emacs/KeyboardMacrosTricks

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Keyboard shortcuts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(if (require 'guru-mode nil 'noerror)
  (guru-global-mode +1)
  (setq guru-warn-only nil))

;; moving between buffers
(global-set-key (kbd "C-`") 'next-buffer)
(global-set-key (kbd "M-`") 'previous-buffer)

;; moving between split buffers
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "C-<escape>") 'other-window)
;(global-set-key (kbd "C-M-<left>") 'windmove-left)
;(global-set-key (kbd "C-M-<right>") 'windmove-right)
;(global-set-key (kbd "C-M-<up>") 'windmove-up)
;(global-set-key (kbd "C-M-<Down>") 'windmove-down)

(global-set-key (kbd "<f5>") 'revert-buffer)
(global-set-key (kbd "M-<f5>") 'revert-buffer-without-confirmation)

(global-set-key (kbd "C-x C-k") 'kill-current-buffer)

(global-set-key (kbd "C-c d") 'duplicate-current-line-or-region)

(global-set-key (kbd "<f7>") 'switch-to-minibuffer-window)

(global-set-key (kbd "C-c y") 'copy-line)

;; vim command-mode like %
(global-set-key "%" 'match-paren)
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1))
					;((looking-back "\\s\(") (backward-char 1) (forward-list 1) (backward-char 1))
	;((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	((looking-back "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1)))))

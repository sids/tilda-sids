;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; paredit-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(require 'paredit)

(autoload 'enable-paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code."
  t)

(eval-after-load 'paredit
  '(progn
     ;; Some paredit keybindings conflict with windmove and SLIME
     ;(define-key paredit-mode-map (kbd "<M-up>") nil)
     ;(define-key paredit-mode-map (kbd "<M-down>") nil)
     ;; Paredit should work with curly brackets as well
     ;(define-key paredit-mode-map "{" 'paredit-open-curly)
     ;(define-key paredit-mode-map "}" 'paredit-close-curly)
))

(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)

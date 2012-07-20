;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; slime
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(eval-after-load "slime"
  '(progn
     (setq slime-net-coding-system 'utf-8-unix)
     (setq slime-protocol-version 'ignore)
     (slime-setup '(slime-repl
		    slime-fancy
		    slime-fuzzy
		    slime-banner))))

(require 'slime)
;(add-to-list 'slime-lisp-implementations '(sbcl ("sbcl")))

;; By default inputs and results have the same color
;; Customize result color to differentiate them
;; Look for `defface' in `slime-repl.el' if you want to further customize
(custom-set-faces
  '(slime-repl-result-face ((t (:foreground "LightGreen")))))

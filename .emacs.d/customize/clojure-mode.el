;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; clojure-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'clojure-mode)
(require 'clojure-test-mode)
(require 'nrepl)

(add-to-list 'auto-mode-alist '("\\.clj\\'" . clojure-mode))

(eval-after-load "clojure-mode"
  '(progn
     (add-hook 'clojure-mode-hook 'enable-paredit-mode)
     (add-hook 'clojure-mode-hook 'highlight-parentheses-mode)
     (add-hook 'clojure-mode-hook 'clojure-enable-nrepl)
     ;;(add-hook 'clojure-mode-hook '(lambda () (slime-mode -1)))
     (add-hook 'clojure-mode-hook '(lambda () (paren-face-add-support
					       clojure-font-lock-keywords)))))

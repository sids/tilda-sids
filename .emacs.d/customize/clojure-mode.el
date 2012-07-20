;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; clojure-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'clojure-mode)
(require 'clojure-test-mode)

(add-to-list 'auto-mode-alist '("\\.clj\\'" . clojure-mode))

(eval-after-load "clojure-mode"
  '(progn
     (add-hook 'clojure-mode-hook '(lambda () (enable-paredit-mode)))
     (add-hook 'clojure-mode-hook '(lambda () (highlight-parentheses-mode)))
     (add-hook 'clojure-mode-hook '(lambda () (paren-face-add-support
					       clojure-font-lock-keywords)))))

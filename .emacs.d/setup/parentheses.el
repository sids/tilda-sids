
(require 'parenface)

(require 'autopair)
(set-default 'autopair-dont-activate #'(lambda () (eq major-mode 'sldb-mode)))
(autopair-global-mode)

(require 'highlight-parentheses)
(setq hl-paren-colors '("LightSkyBlue" "LightBlue" "LightSteelBlue"))
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)

(require 'mic-paren)
(paren-activate)

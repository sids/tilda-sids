;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Setup highlight symbol
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'highlight-symbol)

(highlight-symbol-mode t)

(global-set-key [(meta f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(control meta f3)] 'highlight-symbol-query-replace)

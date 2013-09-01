(require 'nrepl)

;; Tips:
;; http://ianeslick.com/2013/05/17/clojure-debugging-13-emacs-nrepl-and-ritz/
;; http://nullprogram.com/blog/2013/01/07/

;; Set default port
(setq nrepl-port "7888")

(setq nrepl-hide-special-buffers t)
(setq nrepl-history-file "~/.emacs.d/nrepl-history")

;; Stop the error buffer from popping up:
(setq nrepl-popup-stacktraces nil)
(setq nrepl-popup-stacktraces-in-repl t)

;; Some default eldoc facilities
(add-hook 'nrepl-connected-hook
          (defun pnh-clojure-mode-eldoc-hook ()
            (add-hook 'clojure-mode-hook 'turn-on-eldoc-mode)
            (add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)
            (nrepl-enable-on-existing-clojure-buffers)))

;; Configure ac-nrepl for autocomplete-mode
(require 'ac-nrepl)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'nrepl-mode))
(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
;;(add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)

;; Make C-c C-z switch to the *nrepl* buffer in the current window:
;;(add-to-list 'same-window-buffer-names "*nrepl*")

(require 'cider)

; Enable eldoc in Clojure buffers
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

;; Hide the *nrepl-connection* and *nrepl-server* buffers from appearing in buffer switching commands
(setq nrepl-hide-special-buffers t)
;; When using switch-to-buffer (C-x b), pressing SPC after the command will make the hidden buffers visible.
;; They'll always be visible in list-buffers (C-x C-b)

;; The REPL buffer name can also display the port on which the nREPL server is running.
;; Buffer name will look like cider-repl project-name:port.
(setq nrepl-buffer-name-show-port t)

;; Change the result prefix for REPL evaluation (by default there's no prefix)
(setq cider-repl-result-prefix ";; => ")

;; Normally code you input in the REPL is font-locked with
;; cider-repl-input-face (after you press RET) and results are
;; font-locked with cider-repl-output-face. If you want them to be
;; font-locked as in clojure-mode use the following
;(setq cider-repl-use-clojure-font-lock t)

(setq cider-repl-history-size 1000) ; the default is 500

(setq cider-repl-history-file "~/.emacs.d/cider-history")

(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
;(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

;; Tips:
;; http://ianeslick.com/2013/05/17/clojure-debugging-13-emacs-nrepl-and-ritz/
;; http://nullprogram.com/blog/2013/01/07/

;; Set default port
;(setq nrepl-port "7888")
;
;(setq nrepl-hide-special-buffers t)
;(setq nrepl-history-file "~/.emacs.d/nrepl-history")
;
;;; Stop the error buffer from popping up:
;(setq nrepl-popup-stacktraces nil)
;(setq nrepl-popup-stacktraces-in-repl t)
;
;;; Some default eldoc facilities
;(add-hook 'nrepl-connected-hook
;          (defun pnh-clojure-mode-eldoc-hook ()
;            (add-hook 'clojure-mode-hook 'turn-on-eldoc-mode)
;            (add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)
;            (nrepl-enable-on-existing-clojure-buffers)))
;
;;; Configure ac-nrepl for autocomplete-mode
;(require 'ac-nrepl)
;(eval-after-load "auto-complete"
;  '(add-to-list 'ac-modes 'nrepl-mode))
;(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
;;;(add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)
;
;;; Make C-c C-z switch to the *nrepl* buffer in the current window:
;;;(add-to-list 'same-window-buffer-names "*nrepl*")

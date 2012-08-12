;; This is the Aquamacs Preferences file.
;; Add Emacs-Lisp code here that should be executed whenever
;; you start Aquamacs Emacs. If errors occur, Aquamacs will stop
;; evaluating this file and print errors in the *Messags* buffer.
;; Use this file in place of ~/.emacs (which is loaded as well.)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq ns-pop-up-frames nil)

(remove-hook 'kill-emacs-query-functions 'aquamacs-ask-to-save-options)

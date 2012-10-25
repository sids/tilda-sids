(require 'nrepl)
(require 'ac-nrepl)

;; Set default port
(setq nrepl-port "7888")

;; Enable eldoc in clojure buffers:
(add-hook 'nrepl-interaction-mode-hook
          'nrepl-turn-on-eldoc-mode)

;; Stop the error buffer from popping up while working in the REPL buffer:
(setq nrepl-popup-stacktraces nil)

;; Configure ac-nrepl for autocomplete-mode
(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
(add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'nrepl-mode))


;; Trigger autocomplete using TAB in nrepl buffers
(defun set-auto-complete-as-completion-at-point-function ()
  (setq completion-at-point-functions '(auto-complete)))
(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)

(add-hook 'nrepl-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'nrepl-interaction-mode-hook 'set-auto-complete-as-completion-at-point-function)

;; Make C-c C-z switch to the *nrepl* buffer in the current window:
;;(add-to-list 'same-window-buffer-names "*nrepl*")



;;(put 'nrepl 'interactive-form
;;     '(interactive (list (read-from-minibuffer "Host: " "127.0.0.1")
;;			 (read-from-minibuffer "Port: " (format "%d" 7888)
;;					       nil t))))

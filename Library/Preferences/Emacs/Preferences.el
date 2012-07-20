;; EmacsNiftyTricks: http://www.emacswiki.org/emacs/EmacsNiftyTricks

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Stuff to do on every startup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; byte-compile any el files that changed since they were compiled
(byte-recompile-directory "~/Library/Preferences/Emacs/Preferences.d")
(byte-recompile-directory "~/Library/Preferences/Emacs/vendor")

;; Useful functions (mostly) collected from somewhere
(load-library "my-functions")

;; Don't ask to save options when quiting aquamacs
(setq aquamacs-save-options-on-quit nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global options
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(set-language-environment "UTF-8")
(global-font-lock-mode 1)
(cua-mode t)
(transient-mark-mode 1)
(delete-selection-mode t)

(defalias 'yes-or-no-p 'y-or-n-p)
;(setq tags-revert-without-query 1)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; http://www.masteringemacs.org/articles/2011/10/02/improving-performance-emacs-display-engine/
(setq redisplay-dont-pause t)

;; I don't like trailing whitespace in my files
;(add-hook 'before-save-hook 'delete-trailing-whitespace)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Appearance
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(tabbar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)

(load-library "my-color-theme")
(my-color-theme)

;(load-library "appearance")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load-library "keyboard")
(load-library "setup-highlight")
(load-library "setup-parentheses")
(load-library "setup-indentation")

(load-library "setup-ido-mode")
;(load-library "setup-tramp-mode")

;(load-library "setup-auto-indent-mode")
(load-library "setup-auto-complete-mode")
(load-library "setup-paredit-mode")

(load-library "setup-slime-mode")
(load-library "setup-swank-clojure")
(load-library "setup-clojure-mode")

;(load-library "setup-nxhtml-mode")
;(load-library "setup-php-mode")

;(load-library "setup-java-mode")

;(load-library "setup-org-mode")



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Experimental
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(when (and (equal emacs-major-version 23)
;;           (equal emacs-minor-version 3))
;;  (eval-after-load "bytecomp"
;;    '(add-to-list 'byte-compile-not-obsolete-vars
;;                  'font-lock-beginning-of-syntax-function))
;;  ;; tramp-compat.el clobbers this variable!
;;  (eval-after-load "tramp-compat"
;;    '(add-to-list 'byte-compile-not-obsolete-vars
;;                  'font-lock-beginning-of-syntax-function)))




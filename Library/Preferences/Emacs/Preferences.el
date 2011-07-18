(byte-recompile-directory "~/Library/Preferences/Emacs/Preferences.d")
(byte-recompile-directory "~/Library/Preferences/Emacs/vendor")

(set-language-environment "UTF-8")

(load-library "basic-setup")
(load-library "my-functions")

(load-library "setup-ido-mode")
(load-library "setup-highlight-symbol")

(load-library "setup-tramp-mode")
(load-library "setup-org-mode")

(load-library "setup-parentheses")
(load-library "setup-auto-indent-mode")
(load-library "setup-auto-complete-mode")
(load-library "setup-paredit-mode")

(setq tags-revert-without-query 1)
(defalias 'yes-or-no-p 'y-or-n-p)

(load-library "setup-slime-mode")
(load-library "setup-swank-clojure")
(load-library "setup-clojure-mode")

(load-library "setup-nxhtml-mode")
(load-library "setup-php-mode")

(load-library "setup-java-mode")

(load-library "keyboard")
(load-library "appearance")

(when (and (equal emacs-major-version 23)
           (equal emacs-minor-version 3))
  (eval-after-load "bytecomp"
    '(add-to-list 'byte-compile-not-obsolete-vars
                  'font-lock-beginning-of-syntax-function))
  ;; tramp-compat.el clobbers this variable!
  (eval-after-load "tramp-compat"
    '(add-to-list 'byte-compile-not-obsolete-vars
                  'font-lock-beginning-of-syntax-function)))

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; jwz on tabs vs. spaces: http://www.jwz.org/doc/tabs-vs-spaces.html

;; emacs indentation documentation:
;; http://www.cs.utah.edu/dept/old/texinfo/emacs19/emacs_24.html

(setq c-basic-offset 4)
(setq tab-width 4)
(setq indent-tabs-mode nil)

(require 'dtrt-indent nil 'noerror)
;; This auto-detects indentation mode of the file and adopts that,
;; ensuring that I don't spoil indentation in existing files
(add-hook 'c-mode-common-hook 
  (lambda()
    (if (require 'dtrt-indent nil 'noerror)
      (dtrt-indent-mode t))))
;; Other ways of customizing file specific indentation:
;; http://emacs-fu.blogspot.com/2008/12/auto-detecting-indentation-style.html

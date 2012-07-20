;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; slime
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(eval-after-load "slime"
  '(progn
     (require 'swank-clojure-extra)
     (add-to-list 'slime-lisp-implementations `(clojure ,(swank-clojure-cmd)
                                                        :init swank-clojure-init)
                  t)
     (add-hook 'slime-indentation-update-hooks 'swank-clojure-update-indentation)
     (add-hook 'slime-repl-mode-hook 'swank-clojure-slime-repl-modify-syntax t)
     (add-hook 'clojure-mode-hook 'swank-clojure-slime-mode-hook t)))

;; needed for overriding default method for invoking slime
(ad-activate 'slime-read-interactive-args)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; swank-clojure
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq  swank-clojure-classpath (append (list "~/.clojure/clojure.jar"
					     "~/.clojure/clojure-contrib.jar"
					     "~/.clojure/swank-clojure.jar"
					     "~/.clojure")))

(setq swank-clojure-extra-vm-args (list "-client"
					"-noverify"
					;"-Xincgc"
					"-Djava.net.preferIPv4Stack=true"
					;"-Xms256m"
					;"-Xmx1024m"
					;"-XX:CompileThreshold=1500"
					;"-XX:+UseConcMarkSweepGC"
					;"-XX:+UseParNewGC"
					;"-XX:+ExplicitGCInvokesConcurrent"
					;"-XX:+CMSClassUnloadingEnabled"
					;"-XX:MaxPermSize=250m"
					;"-XX:+UseAdaptiveSizePolicy"
					;"-XX:+AggressiveOpts"
					"-XX:+UseFastAccessorMethods"
					"-XX:+UseFastEmptyMethods"
					"-XX:+UseFastJNIAccessors"
					"-Xverify:none"
					;"-XX:+UseCompressedOops"
					"-XX:MaxInlineSize=1024"
					"-XX:FreqInlineSize=1024"))
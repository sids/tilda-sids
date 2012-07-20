;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; tramp-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq tramp-default-method "ssh")

(global-set-key
 [(control x) (control y)]
 (lambda ()
   (interactive)
   (find-file
    (read-file-name
     "Find Tramp file: "
     "/ssh:db5:/"))))

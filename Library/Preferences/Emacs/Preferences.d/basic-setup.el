;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Basic Emacs setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Add the directory as well as its sub-directories to the load path
;; Taken from:
;; http://stackoverflow.com/questions/221365/emacs-lisp-how-to-add-a-folder-and-all-its-first-level-sub-folders-to-the-load-p
;(add-to-list 'load-path "~/Library/Preferences/Emacs/vendor")
(let ((base "~/Library/Preferences/Emacs/vendor"))
  (add-to-list 'load-path base)
  (dolist (f (directory-files base))
    (let ((name (concat base "/" f)))
      (when (and (file-directory-p name)
                 (not (equal f ".."))
                 (not (equal f ".")))
        (add-to-list 'load-path name)))))

;; adjust PATH
(setenv "PATH" (concat "/Users/sids/bin" ":" (getenv "PATH") ":" "/usr/local/bin" ":" ))

;; global preferences
(global-font-lock-mode 1)
;(transient-mark-mode 1)
(cua-mode t)
;(delete-selection-mode t)
(global-hl-line-mode 1)

;; Search preferences
(setq isearch-highlight t)
(setq search-highlight t)
(setq lazy-highlight-cleanup nil)
(global-set-key (kbd "C-x C-h") 'lazy-highlight-cleanup)

;; I don't like trailing whitespace in my files
(add-hook 'before-save-hook 'delete-trailing-whitespace)

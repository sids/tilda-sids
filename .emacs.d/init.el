;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; README
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; EmacsNiftyTricks: http://www.emacswiki.org/emacs/EmacsNiftyTricks


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; *Really* Global options
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(set-language-environment "UTF-8")
(global-font-lock-mode 1)
(cua-mode t)
(transient-mark-mode 1)
(delete-selection-mode t)
(setq visible-bell t)
;;(setq ring-bell-function (lambda () (message "*beep*")))

(defalias 'yes-or-no-p 'y-or-n-p)
;;(setq tags-revert-without-query 1)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; http://www.masteringemacs.org/articles/2011/10/02/improving-performance-emacs-display-engine/
(setq redisplay-dont-pause t)

;; I don't like trailing whitespace in my files
;;(add-hook 'before-save-hook 'delete-trailing-whitespace)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Setup symbols pointing to dirs
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq dot-root-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(setq dot-customize-dir (file-name-as-directory (concat dot-root-dir "customize")))
(setq dot-setup-dir (file-name-as-directory (concat dot-root-dir "setup")))
(setq dot-lib-dir (file-name-as-directory (concat dot-root-dir "lib")))
(setq dot-vendor-dir (file-name-as-directory (concat dot-root-dir "vendor")))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Stuff to do on every startup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; byte-compile any el files that changed since they were compiled
(byte-recompile-directory dot-customize-dir)
(byte-recompile-directory dot-setup-dir)
(byte-recompile-directory dot-lib-dir)
(byte-recompile-directory dot-vendor-dir)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Setup load-path
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Taken from:
;; http://stackoverflow.com/questions/221365/emacs-lisp-how-to-add-a-folder-and-all-its-first-level-sub-folders-to-the-load-p
(defun add-dir-and-subdirs-to-load-path (base)
  "Add the directory as well as its sub-directories to the load path"
  (add-to-list 'load-path base)
  (dolist (f (directory-files base))
    (let ((name (concat base "/" f)))
      (when (and (file-directory-p name)
                 (not (equal f ".."))
                 (not (equal f ".")))
        (add-to-list 'load-path name)))))

(add-dir-and-subdirs-to-load-path dot-setup-dir)
(add-dir-and-subdirs-to-load-path dot-lib-dir)
(add-dir-and-subdirs-to-load-path dot-vendor-dir)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load stuff
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load-library "my-functions")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load mode setups
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(let ((base (file-name-as-directory (concat dot-customize-dir))))
  (dolist (f (directory-files base))
    (let ((name (concat base "/" f)))
      (when (not (file-directory-p name))
        (load-file name)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Load setups
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun dot-load-setup (dot-setup)
  (load-file (concat dot-setup-dir dot-setup ".el")))

(defun dot-load-setups (dot-setups)
  (mapcar (lambda (dot-setup)
            (dot-load-setup dot-setup))
          dot-setups))

(dot-load-setups '("appearance"
                   "keyboard-shortcuts"
                   "indentation"
                   "highlighting"
                   "parentheses"))

(dot-load-setups '("peepopen"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Experimental
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

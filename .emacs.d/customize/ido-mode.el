;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Setup ido-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ido-mode t)

(setq
 ido-enable-flex-matching t
 ido-ignore-buffers '("\\` " "^\*Mess" "^\*Back" ".*Completion" "^\*Ido" "^\*trace" "^\*compilation" "^\*GTAGS" "^session\.*" "^\*")
 ido-case-fold  t
 ido-enable-last-directory-history t
 ido-max-work-directory-list 30
 ido-max-work-file-list      50
 ido-use-filename-at-point nil
 ido-use-url-at-point nil
 ido-max-prospects 8
 ido-confirm-unique-completion t)

;; use ido-mode everywhere
(ido-everywhere)

;; when using ido, the confirmation is rather annoying...
(setq confirm-nonexistent-file-or-buffer nil)

;; sort files by last modified time
;(add-hook 'ido-make-file-list-hook 'ido-sort-mtime)
;(add-hook 'ido-make-dir-list-hook 'ido-sort-atime)

(defun ido-sort-mtime ()
  (setq ido-temp-list
	(sort ido-temp-list
	      (lambda (a b)
		(let ((ta (nth 5 (file-attributes (concat ido-current-directory a))))
		      (tb (nth 5 (file-attributes (concat ido-current-directory b)))))
		  (if (= (nth 0 ta) (nth 0 tb))
		      (> (nth 1 ta) (nth 1 tb))
		    (> (nth 0 ta) (nth 0 tb)))))))
  (ido-to-end  ;; move . files to end (again)
   (delq nil (mapcar
	      (lambda (x) (if (string-equal (substring x 0 1) ".") x))
	      ido-temp-list))))

(defun ido-sort-atime ()
  (setq ido-temp-list
	(sort ido-temp-list
	      (lambda (a b)
		(let ((ta (nth 4 (file-attributes (concat ido-current-directory a))))
		      (tb (nth 4 (file-attributes (concat ido-current-directory b)))))
		  (if (= (nth 0 ta) (nth 0 tb))
		      (> (nth 1 ta) (nth 1 tb))
		    (> (nth 0 ta) (nth 0 tb)))))))
  (ido-to-end  ;; move . files to end (again)
   (delq nil (mapcar
	      (lambda (x) (if (string-equal (substring x 0 1) ".") x))
	      ido-temp-list))))

(defun ido-find-file-in-tag-files ()
  (interactive)
  (save-excursion
    (let ((enable-recursive-minibuffers t))
      (visit-tags-table-buffer))
    (find-file
     (expand-file-name
      (ido-completing-read
       "Project file: " (tags-table-files) nil t)))))

(defun ido-find-tag ()
  "Find a tag using ido"
  (interactive)
  (tags-completion-table)
  (let (tag-names)
    (mapc (lambda (x)
	    (unless (integerp x)
	      (push (prin1-to-string x t) tag-names)))
	  tags-completion-table)
    (find-tag (ido-completing-read "Tag: " tag-names))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Some useful functions
;; Some of these are borrowed from the aquamacs-emacs-starter-kit
;; http://github.com/walter/aquamacs-emacs-starter-kit
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun add-hook-safe (to f)
  (if (and (boundp to) (boundp f))
    (add-hook to f)))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer."
  (interactive)
  (indent-buffer)
  (untabify-buffer)
  (delete-trailing-whitespace))

(defun revert-buffer-without-confirmation ()
  "Revisit the current buffer."
  (interactive)
  (revert-buffer nil 1))

(defun kill-current-buffer ()
  "Kill the current buffer without showing buffer-list."
  (interactive)
  (kill-buffer (current-buffer)))

;; http://emacswiki.org/emacs/CopyingWholeLines
(defun copy-line (arg)
  "Copy lines (as many as prefix argument) in the kill ring"
  (interactive "p")
  (kill-ring-save (line-beginning-position)
                  (line-beginning-position (+ 1 arg)))
  (message "%d line%s copied" arg (if (= 1 arg) "" "s")))

;; grabbed from
;; http://blog.tuxicity.se/elisp/emacs/2010/03/11/duplicate-current-line-or-region-in-emacs.html
(defun duplicate-current-line-or-region (arg)
  "Duplicates the current line or region ARG times.
If there's no region, the current line will be duplicated. However, if
there's a region, all lines that region covers will be duplicated."
  (interactive "p")
  (let (beg end (origin (point)))
    (if (and mark-active (> (point) (mark)))
        (exchange-point-and-mark))
    (setq beg (line-beginning-position))
    (if mark-active
        (exchange-point-and-mark))
    (setq end (line-end-position))
    (let ((region (buffer-substring-no-properties beg end)))
      (dotimes (i arg)
        (goto-char end)
        (newline)
        (insert region)
        (setq end (point)))
      (goto-char (+ origin (* (length region) arg) arg)))))

;; grabbed from
;; http://superuser.com/questions/132225/how-to-get-back-to-an-active-minibuffer-prompt-in-emacs-without-the-mouse
(defun switch-to-minibuffer-window ()
  "switch to minibuffer window (if active)"
  (interactive)
  (when (active-minibuffer-window)
    (select-window (active-minibuffer-window))))

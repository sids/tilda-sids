;; peepopen-standalone.el --- Standalone plugin for PeepOpen

;; Copyright (C) 2012 Siddhartha Reddy <sids.reddy@gmail.com>

;; Licensed under the same terms as Emacs.

;; Keywords: peepopen osx mac
;; Created: 12 Aug 2012
;; Author: Siddhartha Reddy <sids.reddy@gmail.com>
;; Version: 1

;; This file is NOT part of GNU Emacs.

;;; Commentary:

;; PeepOpen (https://peepcode.com/products/peepopen/) is a slick
;; application for Mac OS X for finding and opening files within a
;; "project" directory. This plugin adds Emacs support for PeepOpen.

;; PeepOpen already ships with Emacs integration. But it depends on
;; textmate-mode. This is a standalone alternative that has no
;; dependencies. The code here is largely made up by copying relevant
;; parts of textmate.el and peepopen.el

;;; Installation

;; Place this file <somewhere>.
;;
;; In your emacs config:
;;
;; (load-file "/<somewhere>/peepopen-standalone.el")
;; (global-set-key (kbd "M-o") 'peepopen-goto-file-gui)
;; (global-set-key (kbd "M-p") 'peepopen-set-project-root)

(defvar *peepopen-project-root-identifiers*
  '(".git" ".hg" "Rakefile" "Makefile" "README" "build.xml")
  "The presence of any file/directory in this list indicates a project root.")

(defvar *peepopen-project-root* nil
  "Used internally to cache the project root.")

(defvar *peepopen-project-root-start* "~/")

(defun peepopen-project-root ()
  "Returns the current project root."
  (when (null *peepopen-project-root*)
    (let ((root (peepopen-find-project-root)))
      (if root
          (setq *peepopen-project-root* (expand-file-name (concat root "/")))
        (peepopen-set-project-root))))
  *peepopen-project-root*)

(defun root-match(root names)
  (member (car names) (directory-files root)))

(defun root-matches(root names)
  (if (root-match root names)
      (root-match root names)
    (if (eq (length (cdr names)) 0)
        'nil
      (root-matches root (cdr names)))))

(defun peepopen-find-project-root (&optional root)
  "Determines the current project root by recursively searching for an indicator."
  (when (null root) (setq root default-directory))
  (cond
   ((root-matches root *peepopen-project-root-identifiers*)
    (expand-file-name root))
   ((equal (expand-file-name root) "/") nil)
   (t (peepopen-find-project-root (concat (file-name-as-directory root) "..")))))

(defun peepopen-set-project-root (root)
  "Sets the current project root interactively."
  (interactive (list (read-directory-name "Peepopen for project: "
					  *peepopen-project-root-start*)))
  (flet ((root () (file-truename root)))
    (setq *peepopen-project-root* root)))

(defun peepopen-set-project-root (&optional root)
  "Sets the current project root interactively."
  (interactive)
  (let ((root (or
	       root
               (read-directory-name "Peepopen for project: "
				    *peepopen-project-root-start*))))
    (setq *peepopen-project-root* root)))

(defun peepopen-goto-file-gui ()
  "Uses external GUI app to quickly jump to a file in the project."
  (interactive)
  (defun string-join (separator strings)
    "Join all STRINGS using SEPARATOR."
    (mapconcat 'identity strings separator))
  (let ((root (peepopen-project-root)))
    (when (null root)
      (error
       (concat
        "Can't find a suitable project root")))
    (shell-command-to-string
     (format "open 'peepopen://%s?editor=%s'"
             (expand-file-name root)
             (invocation-name)))))

(defun peepopen-goto-file-in-project-gui ()
  "Interactively set peepopen project root and then call peepopen-goto-file-gui."
  (interactive)
  (peepopen-set-project-root)
  (peepopen-goto-file-gui))

(provide 'peepopen-standalone)

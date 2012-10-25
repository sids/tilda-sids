(require 'auto-complete)
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories
             "~/Library/Preferences/Emacs/vendor/auto-complete/dict")

(ac-config-default)

;;(setq ac-auto-show-menu nil)
(setq ac-ignore-case nil)

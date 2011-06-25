(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
	     "~/Library/Preferences/Emacs/vendor/auto-complete")
(setq ac-auto-show-menu nil)
(setq ac-ignore-case 'smart)
(global-auto-complete-mode t)
(ac-config-default)

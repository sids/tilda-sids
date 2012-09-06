(require 'peepopen-standalone)

(setq *peepopen-project-root-start* "~/src")

(global-set-key (kbd "M-o") 'peepopen-goto-file-gui)
(global-set-key (kbd "C-x M-o") 'peepopen-goto-file-in-project-gui)

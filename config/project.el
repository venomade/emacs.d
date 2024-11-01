(require 'project)

(keymap-global-set "C-c p b" 'project-list-buffers)
(keymap-global-set "C-c p c" 'project-compile)
(keymap-global-set "C-c p e" 'project-dired)
(keymap-global-set "C-c p f" 'project-find-file)
(keymap-global-set "C-c p g" 'project-find-regexp)
(keymap-global-set "C-c p o" 'project-find-dir)
(keymap-global-set "C-c p p" 'project-switch-project)

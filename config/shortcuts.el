;; Replace Emacs default behaviour
(keymap-global-set "C-x b" 'counsel-switch-buffer)
(global-set-key (kbd "C-x C-c") (lookup-key global-map (kbd "C-c")))

;; Rebind Emacs Quit
(keymap-global-set "C-M-S-q" 'save-buffers-kill-terminal)

;; Custom C-c keybinds
(keymap-global-set "C-c e c" (lambda () (interactive) (load-file "~/.emacs.d/init.el")))

(keymap-global-set "C-c f c" (lambda () (interactive) (find-file "~/.emacs.d/config.el")))
(keymap-global-set "C-c f t" (lambda () (interactive) (find-file "~/Documents/TODO.org")))
(keymap-global-set "C-c f b" (lambda () (interactive) (find-file "~/Documents/Bookmarks.org")))

(keymap-global-set "C-c b p" 'previous-buffer)
(keymap-global-set "C-c b n" 'next-buffer)
(keymap-global-set "C-c b r" 'revert-buffer)

(keymap-global-set "C-c e b" 'eval-buffer)
(keymap-global-set "C-c e r" 'eval-region)
(keymap-global-set "C-c e s" 'eshell)

(keymap-global-set "C-c r" 'replace-regexp)

(keymap-global-set "C-c y a" 'copy-from-above-command)

(keymap-global-set "C-c v" 'scroll-other-window)
(keymap-global-set "C-c V" 'scroll-other-window-down)

(keymap-global-set "C-c w n" 'other-window)
(keymap-global-set "C-c w f" 'other-window)
(keymap-global-set "C-c w p" (lambda () (interactive) (other-window -1)))
(keymap-global-set "C-c w b" (lambda () (interactive) (other-window -1)))

;; Cape adds setting what completions are used where
;;; https://github.com/minad/cape
(use-package cape)
(keymap-global-set "C-c c" 'cape-prefix-map)

;; Fall back to dabbrev without other completions
(setq dabbrev-case-fold-search t)
;;(add-to-list 'completion-at-point-functions #'cape-dabbrev)
(add-hook 'completion-at-point-functions #'cape-dabbrev)
(add-hook 'completion-at-point-functions #'cape-file)
(add-hook 'completion-at-point-functions #'cape-elisp-block)

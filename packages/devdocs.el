;; Devdocs provides documentation browsing within Emacs
;;; https://github.com/astoff/devdocs.el
(use-package devdocs)
;; TODO: Automatically installed documentation if not installed
(keymap-global-set "C-c d" 'devdocs-lookup)

;; Undo-Tree replaces the normal undo with advanced Undo Control
;;; https://gitlab.com/tsc25/undo-tree
(use-package undo-tree)
(global-undo-tree-mode 1)
(setq undo-tree-history-directory-alist
      `(("." . ,(concat user-emacs-directory "undo"))))

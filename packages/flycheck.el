;; Flycheck shows syntax errors for many languages
;;; https://github.com/flycheck/flycheck
(use-package flycheck)
(add-hook 'prog-mode-hook 'flycheck-mode)
(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
(setq flycheck-indication-mode nil)

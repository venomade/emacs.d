;; Smartparens is a package for LISP editing that helps with parentheses paralysis
;;; https://github.com/Fuco1/smartparens
(use-package smartparens)
(require 'smartparens-config)
(add-hook 'prog-mode-hook 'smartparens-mode)

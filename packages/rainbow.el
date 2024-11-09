;; Rainbow Delimiters colours parentheses and other delimiters for visual matching
;;; https://github.com/Fanael/rainbow-delimiters
(use-package rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; LSP Mode adds LSP Support to Emacs
;;; https://github.com/emacs-lsp/lsp-mode
(use-package lsp-mode)
(setq lsp-keymap-prefix "C-c l")
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024))
(setq lsp-headerline-breadcrumb-enable nil)

(use-package lsp-ui)

;; Dependency for LSP Completion
(use-package yasnippet)
(yas-global-mode 1)

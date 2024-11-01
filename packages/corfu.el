;; Corfu enables in-text-buffer completion
;;; https://github.com/minad/corfu
(use-package corfu)
(keymap-unset corfu-map "RET")
(setq corfu-auto t)
(global-corfu-mode 1)
(add-hook 'prog-mode-hook 'corfu-popupinfo-mode)

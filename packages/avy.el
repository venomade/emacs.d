;; Avy keybinds superfast cursor movement
;;; https://github.com/abo-abo/avy
(use-package avy)
(setq avy-keys '(?a ?r ?s ?t ?n ?e ?i ?o)
      avy-all-windows nil)
(bind-key* "C-q" 'avy-goto-char)

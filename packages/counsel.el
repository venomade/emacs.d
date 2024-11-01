;; Counsel improves Emacs' minibuffer in many ways
;;; https://github.com/abo-abo/swiper
(use-package counsel)
(counsel-mode 1)
(ivy-mode 1)

(keymap-global-set "C-c f r" 'counsel-buffer-or-recentf)
(keymap-global-set "C-c f f" 'counsel-fzf)
(keymap-global-set "C-c f g" 'counsel-rg)

(keymap-global-set "C-c s" 'swiper)

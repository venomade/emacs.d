;; Hide Warnings
(setq warning-minimum-level :emergency)

;; Disable Bell
(setq ring-bell-function 'ignore)

;; Add Scroll Margin
(setq scroll-margin 12)

;; Setup Line Numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
(global-visual-line-mode t)
(add-hook 'prog-mode-hook (lambda () (visual-line-mode -1)))
(setq-default truncate-lines t)

;; Use Spaces over Tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq tab-stop-list (number-sequence 2 200 2))

;; Highlight Column
(setq-default display-fill-column-indicator-column 80)
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)

;; Disable GUI Features
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Set Emacs auto-save directories
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))
(setq auto-save-file-name-transforms
      `(("." ,(concat user-emacs-directory "autosaves") t)))
(setq lock-file-name-transforms
      `(("." ,(concat user-emacs-directory "lock") t)))

;; Go back to old position on file open
(save-place-mode 1)

;; Disable Fringes
(set-fringe-mode 0)

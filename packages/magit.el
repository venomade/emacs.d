;; Magit is a fast GIT GUI in Elisp
;;; https://github.com/magit/magit
(use-package magit)

;; Github interaction with magit
(use-package forge)
(setq auth-sources '("~/.authinfo"))

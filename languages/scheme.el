;; TODO: Write this header

(use-package geiser)
(use-package geiser-guile)
(use-package flycheck-guile)

(setq geiser-default-implementation 'guile)
(setq geiser-active-implementations '(guile))
 (setq geiser-implementations-alist '(((regexp "\\.scm$") guile)))
(setq geiser-guile-binary "guile3.0")

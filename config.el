(defun dir-load (dir config)
  (load-file
   (expand-file-name
    (concat dir "/" config ".el")
    user-emacs-directory)))

(defun cfg-load (config)
  (dir-load "config" config))

(defun pkg-load (config)
  (dir-load "packages" config))

(defun lang-load (config)
  (dir-load "languages" config))

;; Configs
(cfg-load "straight")
(cfg-load "theme")
(cfg-load "fonts")
(cfg-load "functions")
(cfg-load "shortcuts")
(cfg-load "misc")
(cfg-load "orgmode")
(cfg-load "project")

;; Packages
(pkg-load "avy")
(pkg-load "corfu")
(pkg-load "cape")
(pkg-load "flycheck")
(pkg-load "smartparens")
(pkg-load "devdocs")
(pkg-load "counsel")
(pkg-load "movetext")
(pkg-load "whichkey")
(pkg-load "lsp")
(pkg-load "magit")
(pkg-load "undotree")
(pkg-load "simplemdln")
(pkg-load "multicursor")
(pkg-load "mu4e")

;; Languages
(lang-load "rust")
(lang-load "c-cpp")

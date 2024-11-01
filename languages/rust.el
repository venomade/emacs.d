(use-package rust-mode)
(setq rust-mode-treesitter-derive t)

(setenv "PATH" (concat (concat
                        (concat (expand-file-name "~/.cargo/bin") ":")
                        (getenv "PATH"))))

(setq exec-path (append exec-path (list (expand-file-name "~/.cargo/bin"))))

(use-package flycheck-rust)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

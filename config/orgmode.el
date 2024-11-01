;; Add shorthands for Org Functions
(require 'org-tempo)

;; Use both Mono and Variable fonts in a single buffer
(use-package mixed-pitch)
(add-hook 'org-mode-hook 'mixed-pitch-mode)

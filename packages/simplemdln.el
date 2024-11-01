;; Simple Modeline replaces the default modeline with a minimal one
;;; https://github.com/gexplorer/simple-modeline
(use-package simple-modeline)

(setq simple-modeline-segments
'((;;simple-modeline-segment-modified
   simple-modeline-segment-buffer-name
   simple-modeline-segment-position)
  (simple-modeline-segment-vc
   ;;simple-modeline-segment-minor-modes
   simple-modeline-segment-misc-info
   simple-modeline-segment-process
   simple-modeline-segment-major-mode)))

(simple-modeline-mode 1)

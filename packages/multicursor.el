;; Multi Cursors enable easier editing than built in rectangles
;;; https://github.com/magnars/multiple-cursors.el
(use-package multiple-cursors)
(keymap-global-set "C-c m" 'mc/edit-lines)

;; TODO: Find out more ways to use multicursors

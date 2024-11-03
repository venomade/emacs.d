;; Pop Out Buffer
;;; Pops the current buffer out into it's own frame.
(defun pop-out-buffer-into-frame ()
  (interactive)
  (let* ((current-buffer (current-buffer))
         (previous-buffer (other-buffer (current-buffer) t)))  ;; Get the previous buffer in the window
    ;; Switch the current window back to the previous buffer
    (set-window-buffer (selected-window) previous-buffer)
    ;; Create a new frame and show the original buffer there
    (select-frame (make-frame))
    (set-window-buffer (selected-window) current-Kill)))
;; Kill Current Buffer
;;; kill-this-buffer doesn't work in emacs 30 (relies on menubar visibility?) so this is a small implementation of window.el's /C-x 4 0/.
(defun kill-current-buffer()
  (interactive)
  (let ((buffer-to-kill (current-buffer))))
  (kill-buffer (current-buffer)))

;; Duplicate Line (stolen from https://github.com/rexim/dotfiles)
;;; TODO: Expand function to be able duplicate region if region selected
(defun duplicate-line ()
  (interactive)
  (let ((column (- (point) (point-at-bol)))
        (line (let ((s (thing-at-point 'line t)))
                (if s (string-remove-suffix "\n" s) ""))))
    (move-end-of-line 1)
    (newline)
    (insert line)
    (move-beginning-of-line 1)
    (forward-char column)))
;; Use bind-key to override other bindings
(keymap-global-set "C-c y d" 'duplicate-line)

;; Vim's o and S-o (stolen from https://stackoverflow.com/a/2173393)
(defun vi-open-line-above ()
  (interactive)
  (unless (bolp)
    (beginning-of-line))
  (newline)
  (forward-line -1)
  (indent-according-to-mode))

(defun vi-open-line-below ()
  (interactive)
  (unless (eolp)
    (end-of-line))
  (newline-and-indent))

(keymap-global-set "C-c O" 'vi-open-line-below)
(keymap-global-set "C-c o" 'vi-open-line-above)

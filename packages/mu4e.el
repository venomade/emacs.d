;; Use the Ubuntu 24.04 LTS Package
(add-to-list 'load-path "/usr/share/emacs/site-lisp/elpa-src/mu4e-1.10.8")
(require 'mu4e)
(require 'smtpmail)

(setq user-mail-address "venomade@venomade.com"
      user-full-name "Venomade")

(setq mu4e-change-filenames-when-moving t ; avoid sync conflicts
    mu4e-update-interval (* 10 60) ; check mail 10 minutes
    mu4e-compose-format-flowed t ; re-flow mail so it's not hard wrapped
    mu4e-get-mail-command "mbsync -c ~/.config/mu4e/mbsyncrc -a"
    mu4e-maildir "~/mail")

(setq mu4e-drafts-folder "/Drafts"
    mu4e-sent-folder   "/Sent"
    mu4e-refile-folder "/All Mail"
    mu4e-trash-folder  "/Trash")

(setq mu4e-maildir-shortcuts
    '(("/Inbox"     . ?i)
      ("/Sent"      . ?s)
      ("/Trash"     . ?t)
      ("/Drafts"    . ?d)
      ("/All Mail"  . ?a)))

(setq message-send-mail-function 'smtpmail-send-it
    auth-sources '("~/.authinfo-mail") ;need to use gpg version but only local smtp stored for now
    smtpmail-smtp-server "127.0.0.1"
    smtpmail-smtp-service 1025
    smtpmail-stream-type  'ssl)

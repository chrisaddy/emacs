(use-package mu4e
  :straight t
  :load-path "/usr/share/emacs/site-lisp/mu4e/"
  :config

  (setq mu4e-change-filenames-when-moving t)

  (setq mu4e-update-interval (* 10 60))
  (setq mu4e-get-mail-command "mbsync -a")
  (setq mu4e-maildir "~/.mail/gmail")

  (setq mu4e-compose-format-flowed t)

  (setq message-send-mail-function 'smtpmail-send-it)

  (setq smtpmail-smtp-server "smtp.gmail.com")
  (setq smtpmail-smtp-service 587)

  (setq message-kill-buffer-on-exit t)

  (setq mu4e-drafts-folder "/[Gmail]/Drafts")
  (setq mu4e-sent-folder   "/[Gmail]/Sent Mail")
  (setq mu4e-trash-folder  "/[Gmail]/Trash")
  (setq mu4e-refile-folder "/[Gmail]/All Mail")

  (setq mu4e-maildir-shortcuts
        '((:maildir "/INBOX"             :key ?i)
          (:maildir "/[Gmail]/Sent Mail" :key ?s)
          (:maildir "/[Gmail]/Trash"     :key ?t)
          (:maildir "/[Gmail]/Drafts"    :key ?d)
          (:maildir "/[Gmail]/All Mail"  :key ?a))))

(setq user-mail-address "chris.william.addy@gmail.com"
      user-full-name  "chrisaddy")

(require 'epa-file)
(epa-file-enable)

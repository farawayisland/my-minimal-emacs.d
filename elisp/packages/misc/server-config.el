;;; ~/.config/emacs/elisp/packages/misc/server-config.el
;;; Lisp code for GNU Emacs running as server process
;;; https://github.com/emacs-mirror/emacs/blob/master/lisp/server.el
;; Configure the built-in Emacs server to start after initialization,
;; allowing the use of the emacsclient command to open files in the
;; current session.
(use-package server
  :ensure nil
  :commands server-start
  :hook
  (elpaca-after-init . server-start))

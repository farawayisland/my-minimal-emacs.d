;;; ~/.config/emacs/elisp/packages/buffer-management/buffer-terminator-config.el
;;; Safely terminate Emacs buffers automatically to enhance Emacs' performance
;;; https://github.com/jamescherti/buffer-terminator.el
(use-package buffer-terminator
  :ensure t
  :custom
  ;; Enable/disable verbose mode to log buffer cleanup events
  (buffer-terminator-verbose nil)

  ;; Set the inactivity timeout (in seconds) after which buffers are considered
  ;; inactive (default is 30 minutes):
  (buffer-terminator-inactivity-timeout (* 30 60)) ; 30 minutes

  ;; Define how frequently the cleanup process should run (default is every 10
  ;; minutes):
  (buffer-terminator-interval (* 10 60)) ; 10 minutes

  :config
  (buffer-terminator-mode 1))

;;; ~/.config/emacs/elisp/packages/misc/saveplace-config.el
;;; Save last location in file on exit
;;; https://github.com/emacs-mirror/emacs/blob/master/lisp/saveplace.el
;; save-place-mode enables Emacs to remember the last location within a file
;; upon reopening. This feature is particularly beneficial for resuming work at
;; the precise point where you previously left off.
(use-package saveplace
  :ensure nil
  :commands (save-place-mode save-place-local-mode)
  :hook
  (elpaca-after-init . save-place-mode)
  :custom
  (save-place-limit 400))

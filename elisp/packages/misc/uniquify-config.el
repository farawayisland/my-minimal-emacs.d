;;; ~/.config/emacs/elisp/packages/misc/uniquify-config.el
;;; For unique buffer names dependent on file name
;;; https://github.com/emacs-mirror/emacs/blob/master/lisp/uniquify.el
(use-package uniquify
  :ensure nil
  :custom
  (uniquify-buffer-name-style 'reverse)
  (uniquify-separator "•")
  (uniquify-after-kill-buffer-p t))

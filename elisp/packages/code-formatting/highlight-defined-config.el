;;; ~/.config/emacs/elisp/packages/code-formatting/highlight-defined-config.el
;;; Highlight known Emacs Lisp symbols
;;; https://github.com/Fanael/highlight-defined
;; Highlights function and variable definitions in Emacs Lisp mode
(use-package highlight-defined
  :ensure t
  :commands highlight-defined-mode
  :hook
  (emacs-lisp-mode . highlight-defined-mode))

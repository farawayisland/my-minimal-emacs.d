;;; ~/.config/emacs/elisp/packages/code-formatting/aggressive-indent-config.el
;;; Emacs minor mode that keeps your code always indented.
;;; https://github.com/Malabarba/aggressive-indent-mode
;; Enables automatic indentation of code while typing
(use-package aggressive-indent
  :ensure t
  :commands aggressive-indent-mode
  :hook
  (emacs-lisp-mode . aggressive-indent-mode))

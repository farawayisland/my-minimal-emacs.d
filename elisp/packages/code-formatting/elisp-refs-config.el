;;; ~/.config/emacs/elisp/packages/code-formatting/elisp-refs-config.el
;;; Semantic code search for Emacs Lisp
;;; as tidy horizontal rules
;;; https://github.com/Wilfred/elisp-refs
;; Provides functions to find references to functions, macros, variables,
;; special forms, and symbols in Emacs Lisp
(use-package elisp-refs
  :ensure t
  :commands (elisp-refs-function
             elisp-refs-macro
             elisp-refs-variable
             elisp-refs-special
             elisp-refs-symbol))

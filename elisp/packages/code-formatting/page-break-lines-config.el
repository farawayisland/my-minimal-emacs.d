;;; ~/.config/emacs/elisp/packages/code-formatting/page-break-lines-config.el
;;; Provides a global mode which displays ugly form feed characters
;;; as tidy horizontal rules
;;; https://github.com/purcell/page-break-lines
;; Displays visible indicators for page breaks
(use-package page-break-lines
  :ensure t
  :commands (page-break-lines-mode
             global-page-break-lines-mode)
  :hook
  (emacs-lisp-mode . page-break-lines-mode))

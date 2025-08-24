;;; ~/.config/emacs/elisp/packages/misc/vertico-config.el
;;; VERTical Interactive COmpletion
;;; https://github.com/minad/vertico
;; Vertico provides a vertical completion interface, making it easier to
;; navigate and select from completion candidates (e.g., when `M-x` is pressed).
(use-package vertico
  ;; (Note: It is recommended to also enable the savehist package.)
  :ensure t
  :config
  (vertico-mode))

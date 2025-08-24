;;; ~/.config/emacs/elisp/packages/misc/orderless-config.el
;;; Emacs completion style that matches multiple regexps in any order
;;; https://github.com/oantolin/orderless
;; Vertico leverages Orderless' flexible matching capabilities, allowing users
;; to input multiple patterns separated by spaces, which Orderless then
;; matches in any order against the candidates.
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides '((file (styles partial-completion)))))

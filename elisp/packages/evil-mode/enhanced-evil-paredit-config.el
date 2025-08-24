;;; ~/.config/emacs/elisp/packages/evil-mode/enhanced-evil-paredit-config.el
;;; Prevent parenthesis imbalance when using evil-mode with paredit
;;; https://github.com/jamescherti/enhanced-evil-paredit.el
;; For paredit+Evil mode users: enhances paredit with Evil mode compatibility
(use-package enhanced-evil-paredit
  :ensure t
  :commands enhanced-evil-paredit-mode
  :hook
  (paredit-mode . enhanced-evil-paredit-mode))

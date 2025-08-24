;;; ~/.config/emacs/elisp/packages/code-formatting/paredit-config.el
;;; Minor mode for editing parentheses
;;; https://github.com/emacsmirror/paredit/blob/master/paredit.el
;; Prevent parenthesis imbalance
(use-package paredit
  :ensure t
  :commands paredit-mode
  :hook
  (emacs-lisp-mode . paredit-mode)
  :config
  (define-key paredit-mode-map (kbd "RET") nil))

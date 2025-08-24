;;; ~/.config/emacs/elisp/packages/evil-mode/evil-collection-config.el
;;; A set of keybindings for evil-mode
;;; https://github.com/emacs-evil/evil-collection
(use-package evil-collection
  :after evil
  :ensure t
  :init
  ;; It has to be defined before evil-collection
  (setq evil-collection-setup-minibuffer t)
  :config
  (evil-collection-init))

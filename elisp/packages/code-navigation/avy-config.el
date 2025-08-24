;;; ~/.config/emacs/elisp/packages/code-navigation/avy-config.el
;;; For jumping to visible text using a char-based decision tree
;;; https://github.com/abo-abo/avy
(use-package avy
  :ensure t
  :commands (avy-goto-char
             avy-goto-char-2
             avy-next)
  :init
  (global-set-key (kbd "C-'") 'avy-goto-char-2))

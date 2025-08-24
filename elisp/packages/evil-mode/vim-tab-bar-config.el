;;; ~/.config/emacs/elisp/packages/evil-mode/vim-tab-bar-config.el
;;; A Vim-inspired Emacs tab-bar that automatically adapts to any theme
;;; https://github.com/jamescherti/vim-tab-bar.el
;; Give Emacs tab-bar a style similar to Vim's
(use-package vim-tab-bar
  :ensure t
  :commands vim-tab-bar-mode
  :hook (elpaca-after-init . vim-tab-bar-mode))

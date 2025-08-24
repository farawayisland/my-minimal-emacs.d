;;; ~/.config/emacs/elisp/packages/themes/catppuccin-theme-config.el
;;; Soothing pastel theme for Emacs
;;; https://github.com/catppuccin/emacs
(use-package catppuccin-theme
  :ensure t
  :init
  (setq catppuccin-flavor 'mocha)
  ; (mapc #'disable-theme custom-enabled-themes)
  (load-theme 'catppuccin :no-confirm))

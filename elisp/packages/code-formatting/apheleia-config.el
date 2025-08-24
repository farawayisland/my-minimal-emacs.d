;;; ~/.config/emacs/elisp/packages/code-formatting/apheleia-config.el
;;; Run code formatter on buffer contents without moving point
;;; https://github.com/radian-software/apheleia
;; Apheleia is an Emacs package designed to run code formatters (e.g., Shfmt,
;; Black, and Prettier) asynchronously without disrupting the cursor position
(use-package apheleia
  :ensure t
  :commands (apheleia-mode
             apheleia-global-mode)
  :hook ((prog-mode . apheleia-mode)))

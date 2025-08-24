;;; ~/.config/emacs/elisp/packages/lsp/eglot-config.el
;;; A client for Language Server Protocol servers
;;; https://github.com/joaotavora/eglot
;; Set up the Language Server Protocol (LSP) servers using Eglot
(use-package eglot
  :ensure nil
  :commands (eglot-ensure
             eglot-rename
             eglot-format-buffer))

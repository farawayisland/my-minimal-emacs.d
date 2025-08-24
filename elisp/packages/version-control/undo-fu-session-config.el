;;; ~/.config/emacs/elisp/packages/version-control/undo-fu-session-config.el
;;; Save and recover undo steps between Emacs sessions
;;; https://github.com/emacsmirror/undo-fu-session/blob/master/undo-fu-session.el
;; The undo-fu-session package complements undo-fu by enabling the saving
;; and restoration of undo history across Emacs sessions, even after restarting.
(use-package undo-fu-session
  :ensure t
  :commands undo-fu-session-global-mode
  :hook (elpaca-after-init . undo-fu-session-global-mode))

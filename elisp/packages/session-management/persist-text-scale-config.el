;;; ~/.config/emacs/elisp/packages/session-management/persist-text-scale-config.el
;;; Persist and restore the text scale
;;; https://github.com/jamescherti/persist-text-scale.el
(use-package persist-text-scale
  :commands (persist-text-scale-mode
             persist-text-scale-restore)

  :hook (after-init . persist-text-scale-mode)

  :custom
  (text-scale-mode-step 1.07))

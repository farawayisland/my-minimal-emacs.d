;;; ~/.config/emacs/elisp/packages/misc/marginalia-config.el
;;; Adds marginalia to the minibuffer completions
;;; https://github.com/minad/marginalia
;; Marginalia allows Embark to offer you preconfigured actions in more contexts.
;; In addition to that, Marginalia also enhances Vertico by adding rich
;; annotations to the completion candidates displayed in Vertico's interface.
(use-package marginalia
  :ensure t
  :commands (marginalia-mode marginalia-cycle)
  :hook (elpaca-after-init . marginalia-mode))

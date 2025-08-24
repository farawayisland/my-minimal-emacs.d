;;; ~/.config/emacs/elisp/packages/evil-mode/evil-surround-config.el
;;; This package emulates surround.vim by Tim Pope
;;; https://github.com/emacs-evil/evil-surround
;; The evil-surround package simplifies handling surrounding characters, such as
;; parentheses, brackets, quotes, etc. It provides key bindings to easily add,
;; change, or delete these surrounding characters in pairs. For instance, you
;; can surround the currently selected text with double quotes in visual state
;; using S" or gS".
(use-package evil-surround
  :after evil
  :ensure t
  :commands global-evil-surround-mode
  :custom
  (evil-surround-pairs-alist
   '((?\( . ("(" . ")"))
     (?\[ . ("[" . "]"))
     (?\{ . ("{" . "}"))

     (?\) . ("(" . ")"))
     (?\] . ("[" . "]"))
     (?\} . ("{" . "}"))

     (?< . ("<" . ">"))
     (?> . ("<" . ">"))))
  :hook (elpaca-after-init . global-evil-surround-mode))

;; The following code enables commenting and uncommenting by pressing gcc in
;; normal mode and gc in visual mode.
(with-eval-after-load "evil"
  (evil-define-operator my-evil-comment-or-uncomment (beg end)
    "Toggle comment for the region between BEG and END."
    (interactive "<r>")
    (comment-or-uncomment-region beg end))
  (evil-define-key 'normal 'global (kbd "gc") 'my-evil-comment-or-uncomment))

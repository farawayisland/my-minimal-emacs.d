;;; ~/.config/emacs/elisp/packages/markdown-mode/markdown-toc-config.el
;;; For generating tables of contents in Markdown files
;;; https://github.com/ardumont/markdown-toc
;; Automatically generate a table of contents when editing Markdown files
(use-package markdown-toc
  :ensure t
  :commands (markdown-toc-generate-toc
             markdown-toc-generate-or-refresh-toc
             markdown-toc-delete-toc
             markdown-toc--toc-already-present-p)
  :custom
  (markdown-toc-header-toc-title "**Table of Contents**"))

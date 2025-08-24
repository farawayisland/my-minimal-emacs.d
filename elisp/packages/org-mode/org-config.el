;;; ~/.config/emacs/elisp/packages/org-mode/org-config.el
;;; An authoring tool and a TODO-lists manager for GNU Emacs
;;; https://cgit.git.savannah.gnu.org/cgit/emacs/org-mode.git
;; Org mode is a major mode designed for organizing notes, planning, task
;; management, and authoring documents using plain text with a simple and
;; expressive markup syntax. It supports hierarchical outlines, TODO lists,
;; scheduling, deadlines, time tracking, and exporting to multiple formats
;; including HTML, LaTeX, PDF, and Markdown.
(use-package org
  :ensure t
  :commands (org-mode org-version)
  :mode
  ("\\.org\\'" . org-mode)
  :custom
  (org-hide-leading-stars t)
  (org-startup-indented t)
  (org-adapt-indentation nil)
  (org-edit-src-content-indentation 0)
  ;; (org-fontify-done-headline t)
  ;; (org-fontify-todo-headline t)
  ;; (org-fontify-whole-heading-line t)
  ;; (org-fontify-quote-and-verse-blocks t)
  (org-startup-truncated t))

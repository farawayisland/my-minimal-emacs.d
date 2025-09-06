;;; ~/.config/emacs/elisp/packages/org-mode/ox-latex-config.el
;;; Org-mode exporters: LaTeX
;;; https://orgmode.org/worg/exporters/ox-overview.html
;; LaTeX
(require 'ox-latex)
(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
             '("scrbook"
               "\\documentclass{scrbook}
               [NO-DEFAULT-PACKAGES] [PACKAGES] [EXTRA]"
               ("\\part{%s}" . "\\part*{%s}")
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
(add-to-list 'org-latex-classes
             '("scrbook-org"
               "\\documentclass[oneside, 11pt, DIV = 10, BCOR = 0mm, headsepline = 0.8pt, footsepline = 0.4pt, numbers = noenddot, headings = openany]{scrbook}
\\usepackage{scrbook-preset}
               [NO-DEFAULT-PACKAGES] [PACKAGES] [EXTRA]"
               ("\\part{%s}" . "\\part*{%s}")
               ("\\chapter{%s}" . "\\chapter*{%s}")
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
(setq org-export-with-author nil
      org-export-with-creator nil
      org-export-with-date nil
      org-export-with-title nil
      org-export-with-toc nil
      org-latex-compiler "lualatex"
      org-latex-pdf-process '("latexmk -lualatex -file-line-error -interaction=nonstopmode -synctex=1")
      org-latex-with-hyperref nil)

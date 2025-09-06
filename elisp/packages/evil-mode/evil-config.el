;;; ~/.config/emacs/elisp/packages/evil-mode/evil-config.el
;;; The extensible vi layer for Emacs
;;; https://github.com/emacs-evil/evil
;; Uncomment the following if you are using undo-fu
(setq evil-undo-system 'undo-fu)

;; Vim emulation
(use-package evil
  :ensure t
  :commands (evil-mode evil-define-key)
  :hook (elpaca-after-init . evil-mode)

  :init
  ;; It has to be defined before evil
  (setq evil-want-C-u-scroll t)
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (evil-mode 1)
  ;; Evil-mode keymaps
  ;;; Set leader key in normal and visual states
  (evil-set-leader '(normal visual) (kbd "SPC"))
  (evil-define-key '(normal visual) 'global (kbd "<leader>gj") #'evil-next-visual-line)
  (evil-define-key '(normal visual) 'global (kbd "<leader>gk") #'evil-previous-visual-line)
  (evil-define-key '(normal visual) 'global (kbd "<leader>h") (kbd "^"))
  (evil-define-key '(normal visual) 'global (kbd "<leader>l") (kbd "g_"))
  (evil-define-key '(normal visual) 'global (kbd "<leader>n") #'evil-next-buffer)
  (evil-define-key '(normal visual) 'global (kbd "<leader>pb") #'evil-prev-buffer)
  (evil-define-key 'normal 'global (kbd "<leader>oep") 'org-latex-export-to-pdf)
  (evil-define-key 'normal 'global (kbd "<leader>qw") #'evil-quit)
  (evil-define-key 'normal 'global (kbd "<leader>s.") #'consult-recent-file)
  (evil-define-key 'normal 'global (kbd "<leader>s/") #'consult-line)
  (evil-define-key 'normal 'global (kbd "<leader>sf") #'consult-fd)
  (evil-define-key 'normal 'global (kbd "<leader>sg") #'consult-ripgrep)
  (evil-define-key 'normal 'global (kbd "<leader>SPC") #'consult-buffer)
  (evil-define-key 'normal 'global (kbd "<leader><tab>") #'evil-buffer)
  (evil-define-key nil 'global (kbd "C-h") #'evil-window-left)
  (evil-define-key nil 'global (kbd "C-j") #'evil-window-down)
  (evil-define-key nil 'global (kbd "C-k") #'evil-window-up)
  (evil-define-key nil 'global (kbd "C-l") #'evil-window-right)

  :custom
  ;; Make :s in visual mode operate only on the actual visual selection
  ;; (character or block), instead of the full lines covered by the selection
  (evil-ex-visual-char-range t)
  ;; Use Vim-style regular expressions in search and substitute commands,
  ;; allowing features like \v (very magic), \zs, and \ze for precise matches
  (evil-ex-search-vim-style-regexp t)
  ;; Enable automatic horizontal split below
  (evil-split-window-below t)
  ;; Enable automatic vertical split to the right
  (evil-vsplit-window-right t)
  ;; Disable echoing Evil state to avoid replacing eldoc
  (evil-echo-state nil)
  ;; Do not move cursor back when exiting insert state
  (evil-move-cursor-back nil)
  ;; Make `v$` exclude the final newline
  (evil-v$-excludes-newline t)
  ;; Allow C-h to delete in insert state
  (evil-want-C-h-delete t)
  ;; Enable C-u to delete back to indentation in insert state
  (evil-want-C-u-delete t)
  ;; Enable fine-grained undo behavior
  (evil-want-fine-undo t)
  ;; Allow moving cursor beyond end-of-line in visual block mode
  (evil-move-beyond-eol t)
  ;; Disable wrapping of search around buffer
  (evil-search-wrap nil)
  ;; Whether Y yanks to the end of the line
  (evil-want-Y-yank-to-eol t))

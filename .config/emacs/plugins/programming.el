;; Tree-sitter
(use-package tree-sitter
  :ensure t
  :hook (prog-mode . tree-sitter-mode)
  :config
  (use-package tree-sitter-langs
    :ensure t))
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

;; auto pairs
(use-package smartparens
  :ensure t
  :hook (prog-mode . smartparens-mode))

;; indentation

 ;; (use-package highlight-indent-guides
 ;;    :ensure t
 ;;    :hook (prog-mode . highlight-indent-guides-mode)
 ;;    :config
 ;;    (setq highlight-indent-guides-method 'character)
 ;;    (setq highlight-indent-guides-character ?\│)
 ;;    (set-face-attribute 'highlight-indent-guides-character-face nil
 ;;                        :foreground "#665c54" :background nil)
 ;;    (setq highlight-indent-guides-auto-enabled nil))

;; treemacs
(use-package treemacs
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  :config
  (setq treemacs-width 35
        treemacs-is-never-other-window t
        treemacs-collapse-dirs 3
        treemacs-sorting 'alphabetic-case-insensitive-asc
        treemacs-follow-after-init t
        treemacs-show-hidden-files t)
  )

(use-package treemacs-projectile
  :after (treemacs projectile)
  :ensure t)

(use-package treemacs-nerd-icons
  :after treemacs
  :ensure t
  :config
  (treemacs-load-theme "nerd-icons"))
(global-set-key (kbd "C-x t t") #'treemacs)

;; rainbow-mode
(use-package rainbow-mode
  :ensure t
  :init
  (define-globalized-minor-mode global-rainbow-mode rainbow-mode
    (lambda () (rainbow-mode 1)))
  :config
  (global-rainbow-mode 1))

(provide 'programming)

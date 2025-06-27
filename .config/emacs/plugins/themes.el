;; Set themce
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-one t))
(custom-set-faces

 '(set-face-attribute 'default nil :background "#1a1b26" :foreground "#a9b1d6")
 '(default ((t (:background "#1a1b26" :foreground "#c0caf5"))))
 '(line-number ((t (:background nil))))
 '(hl-line ((t (:background "#292e42"))))
 '(line-number-current-line ((t (:background nil :foreground "#ff9e64" :weight regular))))
 '(tab-bar ((t (:background "#1a1b26" :foreground "#a9b1d6"))))      ;; لون الخلفية والنص العام
 '(tab-bar-tab ((t (:background nil :foreground "#a9b1d6")))) ;; لون التبويب النشط
 '(tab-bar-tab-inactive ((t (:background "#1a1b26" :foreground "#32344a")))) ;; لون التبويب غير النشط
 '(mode-line ((t (:background "#292e42" :foreground "#c0caf5" :box nil))))
 '(mode-line-inactive ((t (:background "#1a1b26" :foreground "#565f89" :box nil))))
 '(minibuffer-prompt ((t (:foreground "#7aa2f7" :weight bold))))
 '(font-lock-comment-face ((t (:foreground "#565f89" :slant italic))))
 '(font-lock-variable-name-face ((t (:foreground "#c0caf5"))))
 '(font-lock-string-face ((t (:foreground "#9ece6a"))))
 '(font-lock-function-name-face ((t (:foreground "#7aa2f7"))))
 '(font-lock-type-face ((t (:foreground "#2ac3de"))))
 '(font-lock-keyword-face ((t (:foreground "#bb9af7" :weight bold))))
 '(font-lock-constant-face ((t (:foreground "#e0af68"))))
 '(font-lock-warning-face ((t (:foreground "#f7768e" :weight bold))))
 )

(provide 'themes)


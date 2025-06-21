;; Set themce
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-gruvbox t))
;; Highlight current line  ;; only for gruvbox theme:
;; (custom-set-faces
;;
;;  '(set-face-attribute 'default nil :background "#282828")
;;  '(line-number ((t (:background nil))))
;;  '(line-number-current-line ((t (:background nil :foreground "#fabd2f" :weight regular))))
;;  '(tab-bar ((t (:background "#3c3836" :foreground "#ebdbb2"))))      ;; لون الخلفية والنص العام
;;  '(tab-bar-tab ((t (:background nil :foreground "#fabd2f")))) ;; لون التبويب النشط
;;  '(tab-bar-tab-inactive ((t (:background "#282828" :foreground "#928374")))) ;; لون التبويب غير النشط
;;  '(mode-line ((t (:background "#3c3836" :foreground "#ebdbb2" :box nil))))
;;  '(mode-line-inactive ((t (:background "#282828" :foreground "#928374" :box nil))))
;; )

(provide 'themes)

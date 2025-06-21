(add-to-list 'load-path (expand-file-name "plugins" user-emacs-directory))

(require 'package-manager)
(require 'ui)
(require 'themes)
(require 'modeline)
(require 'programming)
(require 'pdf-tools)
;

;;; This file is generated from the Emacs.org file in my dotfiles repository!

;;; ----- Basic Configuration -----

;; Core settings
(setq ;; Yes, this is Emacs
      inhibit-startup-message nil

      ;; Instruct auto-save-mode to save to the current file, not a backup file
      auto-save-default nil

      ;; No backup files, please
      make-backup-files nil

      ;; Make it easy to cycle through previous items in the mark ring
      set-mark-command-repeat-pop t

      ;; Don't warn on large files
      large-file-warning-threshold nil

      ;; Follow symlinks to VC-controlled files without warning
      vc-follow-symlinks t

      ;; Don't warn on advice
      ad-redefinition-action 'accept

      ;; Revert Dired and other buffers
      global-auto-revert-non-file-buffers t

      ;; Silence compiler warnings as they can be pretty disruptive
      native-comp-async-report-warnings-errors nil)

;; Core modes
(repeat-mode 1)                ;; Enable repeating key maps
(menu-bar-mode 0)              ;; Hide the menu bar
(tool-bar-mode 0)              ;; Hide the tool bar
(savehist-mode 1)              ;; Save minibuffer history
(scroll-bar-mode 0)            ;; Hide the scroll bar
;; (xterm-mouse-mode 1)           ;; Enable mouse events in terminal Emacs
;; (display-time-mode 1)          ;; Display time in mode line / tab bar
(fido-vertical-mode 1)         ;; Improved vertical minibuffer completions
(column-number-mode 1)         ;; Show column number on mode line
(tab-bar-history-mode 1)       ;; Remember previous tab window configurations
(auto-save-visited-mode 1)     ;; Auto-save files at an interval
(global-visual-line-mode 1)    ;; Visually wrap long lines in all buffers
(global-auto-revert-mode 1)    ;; Refresh buffers with changed local files
(display-time-mode 1)
(display-battery-mode 1)
(global-display-line-numbers-mode 1)
(add-hook 'pdf-view-mode-hook (lambda () (display-line-numbers-mode -1)))
(blink-cursor-mode -1)
(global-hl-line-mode 1)
(set-face-attribute 'default nil :font "Hack Nerd Font-17")

;; Core packages
;; Evil mode
;; (use-package evil
;;   :ensure t
;;   :config
;;   (evil-mode 1))


;; Tabs to spaces
(setq-default indent-tabs-mode nil
	            tab-width 2)

;; Display line numbers in programming modes
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;; Make icomplete slightly more convenient
(keymap-set icomplete-fido-mode-map "M-h" 'icomplete-fido-backward-updir)
(keymap-set icomplete-fido-mode-map "TAB" 'icomplete-force-complete)

;; Delete trailing whitespace before saving buffers
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Move customization settings out of init.el
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file t))

;; Match completion substrings that may be out of order
(defun dw/override-fido-completion-styles ()
  (setq-local completion-styles '(basic substring partial-completion emacs22)))

(add-hook 'icomplete-minibuffer-setup-hook 'dw/override-fido-completion-styles)

(setopt completions-detailed t
        completions-format 'vertical
        completion-auto-select t)

(setopt tab-always-indent 'complete
        completion-styles '(basic partial-completion substring flex)
        completion-ignore-case t
        read-buffer-completion-ignore-case t
        read-file-name-completion-ignore-case t
        completion-flex-nospace t
        completion-show-help nil
        completions-detailed t
        completions-group t
        completion-auto-help 'visible
        completion-auto-select 'second-tab
        completions-header-format nil
        completions-format 'vertical  ;'one-column
        completions-max-height 10)

(keymap-set minibuffer-local-map "C-p" #'minibuffer-previous-completion)
(keymap-set minibuffer-local-map "C-n" #'minibuffer-next-completion)

;; ;; hide menu bar
(menu-bar-mode -1)

;; Move global mode string to the tab-bar and hide tab close buttons
(setq tab-bar-close-button-show nil
      tab-bar-separator " "
      tab-bar-format '(tab-bar-format-tabs-groups
                       tab-bar-separator
                       tab-bar-format-align-right
                       tab-bar-format-global))

;; Turn on the tab-bar
(tab-bar-mode 1)

;; Customize time display
(setq display-time-load-average nil
      display-date-format "%m-%d-%Y"
      display-battrey-mode 1
      ;; display-time-world-time-format "%a, %d %b %I:%M %p %Z"
      display-time-world-list
      '(("Etc/UTC" "UTC")
        ("Europe/Athens" "Athens")
        ("America/Los_Angeles" "Seattle")
        ("America/Denver" "Denver")
        ("America/New_York" "New York")
        ("Pacific/Auckland" "Auckland")
        ("Asia/Shanghai" "Shanghai")
        ("Asia/Kolkata" "Hyderabad")))



;; ----- Special Buffers as Popup Window -----

;; (setq display-buffer-alist
;;       '(("\\*\\(shell\\|.*term\\|.*eshell\\|help\\|compilation\\|Async Shell Command\\|Occur\\|xref\\).*\\*"
;;         (display-buffer-reuse-window display-buffer-in-side-window)
;;         (side . bottom)                  ; Popups go at the bottom
;;         (slot . 0)                       ; Use the first slot at the bottom
;;         (post-command-select-window . t) ; Select the window upon display
;;         (window-height . 0.3))))         ; 30% of the frame height

;; (defun dw/toggle-popup-window ()
;;   (interactive)
;;   (if-let ((popup-window
;;             (get-window-with-predicate
;;              (lambda (window)
;;                (eq (window-parameter window 'window-side)
;;                    'bottom)))))
;;
;;       ;; Focus the window if it is not selected, otherwise close it
;;       (if (eq popup-window (selected-window))
;;           (delete-window popup-window)
;;         (select-window popup-window))

    ;; Find the most recent buffer that matches the rule and show it
    ;; NOTE: This logic is somewhat risky because it makes the assumption
    ;;       that the popup rule comes first in `display-buffer-alist'.
    ;;       I chose to do this because maintaining a separate variable
    ;;       for this rule meant I had to re-evaluate 2 different forms
    ;;       to update my rule list.
;;     (if-let ((popup-buffer
;;               (seq-find (lambda (buffer)
;;                           (buffer-match-p (caar display-buffer-alist)
;;                                           (buffer-name buffer)))
;;                         (if (project-current)
;;                             (project-buffers (project-current))
;;                           (buffer-list (selected-frame))))))
;;         (display-buffer popup-buffer (cdar display-buffer-alist))
;;       (message "No popup buffers found."))))
;;
;; ;; TODO: This binding may need to change
;; (keymap-global-set "C-c p" #'dw/toggle-popup-window)
;; (with-eval-after-load 'term
;;   (keymap-set term-raw-map "C-c p" #'dw/toggle-popup-window))





;;; ----- Essential Org Mode Configuration -----

(setq org-ellipsis " ▾"
      org-startup-folded 'content
      org-cycle-separator-lines 2
      org-fontify-quote-and-verse-blocks t)

;; Indent org-mode buffers for readability
(add-hook 'org-mode-hook #'org-indent-mode)

;; Set up Org Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (shell . t)))

;; Use org-tempo
(use-package org-tempo
  :ensure nil
  :demand t
  :config
  (dolist (item '(("sh" . "src sh")
                  ("el" . "src emacs-lisp")
                  ("li" . "src lisp")
                  ("sc" . "src scheme")
                  ("ts" . "src typescript")
                  ("py" . "src python")
                  ("yaml" . "src yaml")
                  ("json" . "src json")
                  ("einit" . "src emacs-lisp :tangle emacs/init.el")
                  ("emodule" . "src emacs-lisp :tangle emacs/modules/dw-MODULE.el")))
    (add-to-list 'org-structure-template-alist item)))


;; configuration the exwm

(require 'exwm)
(require 'exwm-randr)

(setq exwm-randr-workspace-output-plist
      '(0 "eDP1")) ;; ربط workspace 0 بالشاشة الوحيدة المتصلة

(add-hook 'exwm-randr-screen-change-hook
          (lambda ()
            (start-process-shell-command
             "xrandr" nil
             "xrandr --output eDP1 --primary --mode 1920x1080 --pos 0x0 --rotate normal")))

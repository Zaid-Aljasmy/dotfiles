;;; vertico-reverse.el --- Reverse the Vertico display -*- lexical-binding: t -*-

;; Copyright (C) 2021-2025 Free Software Foundation, Inc.

;; Author: Daniel Mendler <mail@daniel-mendler.de>
;; Maintainer: Daniel Mendler <mail@daniel-mendler.de>
;; Created: 2021
;; Package-Requires: ((emacs "28.1") (compat "30") (vertico "2.3"))
;; URL: https://github.com/minad/vertico

;; This file is part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; This package is a Vertico extension, which reverses the list of
;; candidates.
;;
;; The mode `vertico-reverse-mode' can be enabled globally or via
;; `vertico-multiform-mode' per command or completion category.
;; Alternatively the reverse display can be toggled temporarily
;; with M-R if `vertico-multiform-mode' is enabled.

;;; Code:

(require 'vertico)
(eval-when-compile (require 'cl-lib))

(defvar-keymap vertico-reverse-map
  :doc "Additional keymap activated in reverse mode."
  "<remap> <beginning-of-buffer>" #'vertico-last
  "<remap> <minibuffer-beginning-of-buffer>" #'vertico-last
  "<remap> <end-of-buffer>" #'vertico-first
  "<remap> <scroll-down-command>" #'vertico-scroll-up
  "<remap> <scroll-up-command>" #'vertico-scroll-down
  "<remap> <next-line>" #'vertico-previous
  "<remap> <previous-line>" #'vertico-next
  "<remap> <next-line-or-history-element>" #'vertico-previous
  "<remap> <previous-line-or-history-element>" #'vertico-next
  "<remap> <backward-paragraph>" #'vertico-next-group
  "<remap> <forward-paragraph>" #'vertico-previous-group)

;;;###autoload
(define-minor-mode vertico-reverse-mode
  "Reverse the Vertico display."
  :global t :group 'vertico
  ;; Reset overlays
  (dolist (buf (buffer-list))
    (when-let ((ov (buffer-local-value 'vertico--candidates-ov buf)))
      (overlay-put ov 'before-string nil)))
  (cl-callf2 rassq-delete-all vertico-reverse-map minor-mode-map-alist)
  (when vertico-reverse-mode
    (push `(vertico--input . ,vertico-reverse-map) minor-mode-map-alist)))

(cl-defmethod vertico--display-candidates (lines &context (vertico-reverse-mode (eql t)))
  (move-overlay vertico--candidates-ov (point-min) (point-min))
  (setq lines (nreverse lines))
  (unless (eq vertico-resize t)
    (setq lines (nconc (make-list (max 0 (- vertico-count (length lines))) "\n") lines)))
  (let ((string (apply #'concat lines)))
    (add-face-text-property 0 (length string) 'default 'append string)
    (overlay-put vertico--candidates-ov 'before-string string)
    (overlay-put vertico--candidates-ov 'after-string nil)))

(provide 'vertico-reverse)
;;; vertico-reverse.el ends here

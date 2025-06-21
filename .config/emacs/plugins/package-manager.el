
;; تفعيل نظام الحزم الأساسي
(require 'package)

;; إضافة المستودعات الرسمية
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")))

;; تهيئة نظام الحزم
(package-initialize)

;; تحديث قائمة الحزم إذا لم تكن موجودة
(unless package-archive-contents
  (package-refresh-contents))

;; تثبيت use-package إذا لم يكن مثبتاً
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; تحميل use-package
(require 'use-package)

;; خيارات عامة لـ use-package
(setq use-package-always-ensure t)

;; exWM

(unless (package-installed-p 'exwm)
  (package-install 'exwm))

;; pdf-tools
(use-package pdf-tools
  :ensure t
  :config
  (pdf-tools-install))

(provide 'package-manager)

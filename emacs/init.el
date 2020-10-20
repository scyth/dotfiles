(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/helm")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")

(electric-pair-mode)

;; autocompletion and lsp mode
(require 'setup-company-and-lsp)

;; vim emulation
(require 'setup-evil)

;; file and project management goodies
(require 'setup-helm-and-projectile)


;; GO Programming Language - and related shortcuts
(require 'setup-lang-go)

;; C Programming Language - and related shortcuts
(require 'setup-lang-c)

;; interface stuff
(require 'setup-ui)

(use-package yasnippet
	     :ensure t
  :commands yas-minor-mode
  :hook (go-mode . yas-minor-mode))


;;(setq projectile-indexing-method 'native)
(setq desktop-restore-frames t)
(use-package dired-sidebar
  :ensure t
  :commands (dired-sidebar-toggle-sidebar))
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files
(semantic-mode 0)


(defun nolinum ()
  (global-linum-mode 0)
)
(add-hook 'org-mode-hook 'nolinum)


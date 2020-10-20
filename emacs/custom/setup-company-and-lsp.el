(use-package lsp-ui
	     :ensure t
	     :commands lsp-ui-mode
	     :config (progn
		       (setq lsp-ui-sideline-enable nil)
		       (setq lsp-ui-flycheck-enable nil)
		       (setq lsp-diagnostic-package :none) ;; disable flycheck/flymake
		       (setq lsp-ui-doc-enable nil))
	     :init
	     )

(use-package company
             :init
             (add-hook 'after-init-hook 'global-company-mode)
             ;(setq company-backends (delete 'company-semantic company-backends))
	     :config (progn
		       (setq company-idle-delay 0)
		       (setq company-minimum-prefix-length 1)
		       (setq company-tooltip-align-annotations t))
	     )

(use-package company-lsp
	     :ensure t
	     :commands company-lsp)

(provide 'setup-company-and-lsp)

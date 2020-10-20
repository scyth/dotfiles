(menu-bar-mode -1)

;(load-theme 'solarized-light t)
;(set-terminal-parameter nil 'background-mode 'light)
(load-theme 'material t)


(use-package smart-mode-line
	     :ensure t
             :init
             (setq sml/theme 'respectful)
             (sml/setup)
)
(use-package linum-relative
             :init
             (setq linum-relative-format "%4s ")
             (setq linum-relative-backend 'display-line-numbers-mode)
             (linum-relative-global-mode)
)

(provide 'setup-ui)


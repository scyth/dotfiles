(use-package helm
	     :init)

(require 'helm-config)

(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

(helm-mode 1)

(use-package projectile
             :init
             (global-set-key (kbd "C-c o") #'projectile-find-other-file)
             (setq projectile-indexing-method 'native)
             (projectile-mode)
)

(use-package helm-projectile
             :init
             (helm-projectile-on)
)

(provide 'setup-helm-and-projectile)


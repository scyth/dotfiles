(setq evil-want-C-i-jump nil) ;; make tab useful in org mode before evil is loaded
(use-package evil
             :init
             (use-package evil-surround
                          :init)
             (use-package evil-commentary
                          :init)
             (global-evil-surround-mode 1)
             (evil-commentary-mode)
             (evil-mode 1)

	     (defvar my-leader-map
	       (make-sparse-keymap)
	       "Keymap for 'leader key' shortcuts.")

	     (evil-define-key 'normal global-map "," my-leader-map)

	     (define-key my-leader-map "p" 'helm-projectile-find-file)
	     (define-key my-leader-map "P" 'helm-projectile-switch-project)
	     (define-key my-leader-map "b" 'helm-projectile-switch-to-buffer)
	     (define-key my-leader-map "." 'switch-to-next-buffer)
	     ;; (define-key my-leader-map "l" 'switch-to-prev-buffer)
	     (define-key my-leader-map "l" 'evil-switch-to-windows-last-buffer)
	     (define-key my-leader-map "w" 'save-buffer)
	     (define-key my-leader-map "q" 'kill-this-buffer)
	     (define-key my-leader-map "gs" 'magit-status)
	     (define-key my-leader-map "ga" 'magit-stage-file)
	     (define-key my-leader-map "Q" 'evil-quit-all)
	     (define-key my-leader-map "e" 'helm-find-files) ; like emacs C-x C-f
	     (define-key my-leader-map "a" 'align-current)
	     )
(provide 'setup-evil)


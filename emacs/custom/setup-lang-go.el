(use-package go-mode
		:ensure t

		:bind (
		       ("C-c C-c"	. compile)
		       ("C-c i"		. go-guru-describe)
		       ("C-c j"		. lsp-find-definition)
		       ("C-c J"		. go-guru-definition-other-window)
		       ("C-c C-o t"	. lsp-find-type-definition)
		       ("C-c C-o <"	. go-guru-callers)
		       ("C-c C-o r"	. go-guru-referrers)
		       ("C-c C-o i"	. go-guru-implements)
		       ("C-c C-f f"	. go-goto-function)
		       ("C-c C-f m"	. go-goto-method-receiver)
		       ("C-c C-f n"	. go-goto-function-name)
		       ("C-c C-f a"	. go-goto-arguments)
		       ("C-c C-f r"	. go-goto-return-values)
		)

		:config (progn
			  (setq compile-command "go build -v && go test -v && go vet")
			  (setq gofmt-command "goimports")
		)

		:hook ((go-mode . lsp-deferred)
		       (before-save . lsp-format-buffer)
		       (before-save . lsp-organize-imports)
		)

		:init

		;; dependencies
		(use-package go-guru
			     :init)
)

(provide 'setup-lang-go)


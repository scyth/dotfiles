(use-package company-c-headers
  :init
  (add-to-list 'company-backends 'company-c-headers)
  (add-to-list 'company-backends 'company-clang)
)
;; Available C style:
;; “gnu”: The default style for GNU projects
;; “k&r”: What Kernighan and Ritchie, the authors of C used in their book
;; “bsd”: What BSD developers use, aka “Allman style” after Eric Allman.
;; “whitesmith”: Popularized by the examples that came with Whitesmiths C, an early commercial C compiler.
;; “stroustrup”: What Stroustrup, the author of C++ used in his book
;; “ellemtel”: Popular C++ coding standards as defined by “Programming in C++, Rules and Recommendations,” Erik Nyquist and Mats Henricson, Ellemtel
;; “linux”: What the Linux developers use for kernel development
;; “python”: What Python developers use for extension modules
;; “java”: The default style for java-mode (see below)
;; “user”: When you want to define your own style
(setq c-default-style "linux")
(use-package cc-mode
  :init
  (require 'cc-mode)
  (require 'company)
  (setq company-minimum-prefix-length 1)

  (define-key c-mode-map (kbd "C-c C-j") 'xref-find-definitions)
  (setq-default c-basic-offset 8 tab-width 8 indent-tabs-mode t)
  (setq show-trailing-whitespace t)
)

(add-hook 'c-mode-common-hook #'clang-format+-mode)
(add-hook 'c-mode-common-hook #'company-mode)
;(defvar c-eldoc-cpp-command "/usr/bin/cpp")
(defvar c-eldoc-includes "-I./ -I./src/ -I./include")
(load "c-eldoc")
(add-hook 'c-mode-hook 'c-turn-on-eldoc-mode)

(provide 'setup-lang-c)


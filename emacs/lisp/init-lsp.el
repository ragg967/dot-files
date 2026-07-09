;; -*- lexical-binding: t; -*-

(unless (package-installed-p 'odin-mode)
  (package-vc-install '(odin-mode :url "https://github.com/mattt-b/odin-mode.git")))

(use-package go-mode
  :hook (go-mode . eglot-ensure))

(add-hook 'odin-mode-hook 'eglot-ensure)
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c-ts-mode-hook 'eglot-ensure)

(with-eval-after-load 'eglot
  (define-key eglot-mode-map (kbd "C-c a") #'eglot-code-actions)
  (define-key eglot-mode-map (kbd "C-c r") #'eglot-rename)
  (define-key eglot-mode-map (kbd "C-c f") #'eglot-format-buffer))

(provide 'init-lsp)

;; -*- lexical-binding: t; -*-

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/Odin"))
(add-to-list 'exec-path "/usr/local/Odin")

(require 'init-packages)
(require 'init-ui)
(require 'init-editing)
(require 'init-lsp)
(require 'init-completion)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil)
 '(package-vc-selected-packages
   '((odin-mode :vc-backend Git :url
                "https://github.com/mattt-b/odin-mode.git"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

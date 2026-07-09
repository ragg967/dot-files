;; -*- lexical-binding: t; -*-
;; init-ui.el — theme, font, UI cleanup

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(load-theme 'modus-vivendi t)
(add-to-list 'default-frame-alist '(font . "Liberation Mono-12"))

(provide 'init-ui)

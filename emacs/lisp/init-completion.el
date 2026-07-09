;; -*- lexical-binding: t; -*-
;; init-completion.el

;; In-buffer completion popup (this is your actual "autocomplete" UI)
(use-package corfu
  :init
  (global-corfu-mode)
  :custom
  (corfu-auto t)          ;; show completions automatically as you type
  (corfu-auto-delay 0.2)
  (corfu-auto-prefix 2))  ;; start after 2 characters typed

;; Better fuzzy matching for completion candidates
(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

;; Minibuffer completion (for M-x, C-x C-f, etc.) — different from in-buffer
(use-package vertico
  :init
  (vertico-mode))

;; Annotations in minibuffer completion (shows extra info next to candidates)
(use-package marginalia
  :init
  (marginalia-mode))

(provide 'init-completion)

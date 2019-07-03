;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(load-theme 'doom-spacegrey)

(setq doom-font (font-spec :family "Input Mono" :weight 'light :size 13))

;; default
(global-set-key (kbd "C-c C-u") 'string-inflection-all-cycle)

;; for ruby
(add-hook 'enh-ruby-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c C-u") 'string-inflection-ruby-style-cycle)))

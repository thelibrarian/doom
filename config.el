;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq initial-frame-alist '((top . 50) (left . 200) (width . 130) (height . 75)))

;; (setq doom-theme 'doom-spacegrey)
(setq doom-theme 'darktooth)

(setq doom-font (font-spec :family "Input Mono" :weight 'light :size 13))

(define-key evil-normal-state-map "\C-e" 'end-of-line)

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key "\C-s" 'swiper)

;; default
(global-set-key (kbd "C-c C-u") 'string-inflection-all-cycle)

;; for ruby
(add-hook 'enh-ruby-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-c C-u") 'string-inflection-ruby-style-cycle)))

;; for org
(setq org-directory "~/Documents/Notes")
(setq org-log-done 'time)
(setq org-startup-indented t)
(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-capture-templates
      '(("r" "RPG ideas" entry (file+headline "../rpg/ideas.org" "Ideas")
         "* %?\n\nEntered %U\n")
        ("t" "Todo" entry (file+headline "tasks.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("n" "Note" entry (file org-default-notes-file)
         "* %?\n\nEntered %U\n")))
(setq org-journal-file-format "%Y-%m-%d.org")

(setq deft-directory "~/Documents/Notes")
(setq tramp-default-method "ssh")

(setq-default js2-basic-offset 2)
(setq-default js-indent-level 2)
(setq-default css-indent-offset 2)

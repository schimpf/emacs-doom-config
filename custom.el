;;; custom.el ---                                    -*- lexical-binding: t; -*-

;; Copyright (C) 2022  John Doe

;; Author: John Doe <john@doe.com>
;; Keywords:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "4ade6b630ba8cbab10703b27fd05bb43aaf8a3e5ba8c2dc1ea4a2de5f8d45882" "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" "1704976a1797342a1b4ea7a75bdbb3be1569f4619134341bd5a4c1cfb16abad4" "333958c446e920f5c350c4b4016908c130c3b46d590af91e1e7e2a0611f1e8c5" "234dbb732ef054b109a9e5ee5b499632c63cc24f7c2383a849815dacc1727cb6" "da186cce19b5aed3f6a2316845583dbee76aea9255ea0da857d1c058ff003546" "cf922a7a5c514fad79c483048257c5d8f242b21987af0db813d3f0b138dfaf53" default))
 '(magit-todos-insert-after '(bottom) nil nil "Changed by setter of obsolete option `magit-todos-insert-at'")
 '(org-agenda-files
   '("~/org/roam/20230726082758-nomiri_2_0.org" "/Users/gerritschimpf/org/about_me.org" "/Users/gerritschimpf/org/bio.org" "/Users/gerritschimpf/org/email_templates.org" "/Users/gerritschimpf/org/event_checklist.org" "/Users/gerritschimpf/org/goals.org" "/Users/gerritschimpf/org/javascript.org" "/Users/gerritschimpf/org/nomiri-self.org" "/Users/gerritschimpf/org/notes.org" "/Users/gerritschimpf/org/rh-tasks.org" "/Users/gerritschimpf/org/snippets.org" "/Users/gerritschimpf/org/todo.org"))
 '(org-link-frame-setup
   '((vm . vm-visit-folder-other-frame)
     (vm-imap . vm-visit-imap-folder-other-frame)
     (gnus . org-gnus-no-new-news)
     (file . find-file-other-window)
     (wl . wl-other-frame)))
 '(package-selected-packages
   '(csv ob-graphql restclient-test simplecov restclient csv-mode omnisharp csharp-mode plantuml-mode robe rspec-mode eshell-toggle evil-tutor-ja evil-tutor)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'restclient)

;l No reek please
(setq-default flycheck-disabled-checkers '(ruby-reek))
(setq package-install-upgrade-built-in t)

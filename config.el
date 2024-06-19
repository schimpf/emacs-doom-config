;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Gerrit Schimpf"
      user-mail-address "gerrit@schimpf.es")

(setq doom-theme 'doom-solarized-dark)
(setq display-line-numbers-type `relative)
(setq org-directory "~/org/")
(setq lsp-dart-flutter-sdk-dir "/Users/gerritschimpf/Downloads/flutter/")
(setq lsp-dart-sdk-dir "/Users/gerritschimpf/Downloads/flutter/")

(projectile-add-known-project "~/eclectick/ems")
(projectile-add-known-project "~/eclectick/patient_db")
(projectile-add-known-project "~/eclectick/cineclick/cineclick_com")
(projectile-add-known-project "~/eclectick/cineclick/cineclick_ionic")
(projectile-add-known-project "~/Nebulab/marketplace")
(projectile-add-known-project "~/Nebulab/shopify-workshop/dark")
(projectile-add-known-project "~/Nebulab/shopify-workshop/shopify-workshop-2024")
(projectile-add-known-project "~/Nebulab/shopify-workshop/cartwheel")
(projectile-add-known-project "~/Nebulab/shopify-workshop/retreat-2024")
(projectile-add-known-project "~/Nebulab/shopify-workshop/hydrogen-storefront")
(projectile-add-known-project "~/Nebulab/fw-webhook-handler")
(projectile-add-known-project "~/Sides/ah_track")
(projectile-add-known-project "~/Sides/seo_master")
(projectile-add-known-project "~/Sides/webgalaxy")
(projectile-add-known-project "~/Sides/ngc520/ngc520_core")
(projectile-add-known-project "~/Sides/ngc520/ngc520_web")
(projectile-add-known-project "~/Sides/kigorg")
(projectile-add-known-project "~/Sides/gavorta")
(projectile-add-known-project "~/Sides/GdGavorta")
(projectile-add-known-project "~/Sides/mydoc-client")
(projectile-add-known-project "~/Sides/MMR/trade_bot")

(projectile-add-known-project "~/saas/time_syncr")
(projectile-add-known-project "~/saas/retrosas")
(projectile-add-known-project "~/saas/rails_translator")
(projectile-add-known-project "~/saas/watchout")
(projectile-add-known-project "~/saas/gmod")
(projectile-add-known-project "~/saas/simple_learning_platform")
(projectile-add-known-project "~/saas/do_it_today")

(global-set-key (kbd "M-b") '+vterm/toggle)
(map! :after vterm
      :map vterm-mode-map
      :ni "M-b" #'+vterm/toggle)

(global-set-key [C-tab] 'previous-buffer)
(global-set-key (kbd "C-<backspace>") 'previous-buffer)

(use-package! copilot
  :hook (prog-mode . copilot-mode)
  :bind (:map copilot-completion-map
              ("<tab>" . 'copilot-accept-completion)
              ("TAB" . 'copilot-accept-completion)
              ("C-TAB" . 'copilot-accept-completion-by-word)
              ("C-<tab>" . 'copilot-accept-completion-by-word)))


(after! org
        (setq org-roam-directory "~/org/roam/")
        (setq org-roam-index-file "~/org/roam/index.org"))

(setq auth-sources '("~/.authinfo"))

(setq magit-list-refs-sortby "-creatordate")

(defun copy-current-line-position-to-clipboard ()
  "Copy current line in file to clipboard as '</path/to/file>:<line-number>'."
  (interactive)
  (let ((path-with-line-number
         (concat (buffer-file-name) ":" (number-to-string (line-number-at-pos)))))
    (kill-new path-with-line-number)
    (message (concat path-with-line-number " copied to clipboard"))))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((plantuml . t)))

;; Lets get real
(use-package! gptel
 :config
 (setq! gptel-api-key getenv('OPENAI_KEY'))

;; More chat gpt action
(setq openai-key (getenv 'OPENAI_KEY'))
(use-package! chatgpt)
(use-package! codegpt)

;; Fix my env vars
(use-package! exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(add-to-list 'load-path "~/.rvm/bin")

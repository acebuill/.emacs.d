;; BACKUP DIR
(setq backup-directory-alist `(("." . "~/.emacsbackupfiles")))

;; UI BLOAT
(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(set-fringe-mode '(0 . 0))

;; PACKAGE RESPOSITORIES
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
	("org" . "https://orgmode.org/elpa/")
	("elpa" . "https://elpa.gnu.org/packages/")))

;; INIT use-package
(package-initialize)

(setq use-package-always-ensure t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile (require 'use-package))

;; MAGIT
(use-package magit)

;; VERTICO
(use-package vertico
  :demand t
  :init (vertico-mode))

;; THEMING
(use-package doom-themes)
(load-theme 'doom-gruvbox)

;; KEYBINDS
(use-package bind-key)
(define-key override-global-map (kbd "C-h") 'backward-delete-char)
(define-key override-global-map (kbd "M-h") 'backward-kill-word)

;; FONT
(push '(font . "Iosevka Nerd Font") default-frame-alist)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("c4063322b5011829f7fdd7509979b5823e8eea2abf1fe5572ec4b7af1dd78519" default))
 '(package-selected-packages '(magit vertico use-package doom-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

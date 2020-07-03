
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("993b3eab4521684ca8813f8efd01fff3102102706b689a55b355160a2d2dcad6" default)))
 '(display-line-numbers-type (quote relative))
 '(ido-enable-flex-matching t)
 '(package-selected-packages
   (quote
    (tide flycheck use-package yaml-mode neotree jedi evil helm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Misc
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") 
(setq backup-directory-alist
	`(("." . ,(concat user-emacs-directory "backups"))))

;; Ido
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Keybindings
(global-set-key (kbd "M-o") 'next-multiframe-window)

;; Package manager
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; evil
(require 'evil)
(evil-mode 1)
(global-display-line-numbers-mode)

;; flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))

;; typescript
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1))
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  ;; (company-mode +1))

;; aligns annotation to the right hand side
;; (setq company-tooltip-align-annotations t)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
    (lambda ()
    (when (string-equal "tsx" (file-name-extension buffer-file-name))
	(setup-tide-mode))))

;; enable typescript-eslint checker
;; (flycheck-add-mode 'typescript-eslint 'web-mode)

;; python
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)



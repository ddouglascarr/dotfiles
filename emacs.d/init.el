(setq package-enable-at-startup nil)
;; cask package management
(require 'cask "~/.cask/cask.el")
(cask-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
	 [default default default italic underline success warning error])
 '(ansi-color-names-vector
	 ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (wheatgrass)))
 '(custom-safe-themes
	 (quote
		("993b3eab4521684ca8813f8efd01fff3102102706b689a55b355160a2d2dcad6" default)))
 '(display-line-numbers-type (quote relative))
 '(flymake-error-bitmap
	 (quote
		(flymake-double-exclamation-mark ibm-theme-fringe-danger)))
 '(flymake-note-bitmap (quote (exclamation-mark ibm-theme-fringe-info)))
 '(flymake-warning-bitmap (quote (exclamation-mark ibm-theme-fringe-warning)))
 '(hl-todo-keyword-faces
	 (quote
		(("HOLD" . "#9f1853")
		 ("TODO" . "#007d79")
		 ("NEXT" . "#009d9a")
		 ("THEM" . "#005d5d")
		 ("PROG" . "#0072c3")
		 ("OKAY" . "#00539a")
		 ("DONT" . "#0e6027")
		 ("FAIL" . "#8a3ffc")
		 ("DONE" . "#198038")
		 ("NOTE" . "#ee5396")
		 ("KLUDGE" . "#d12771")
		 ("HACK" . "#d12771")
		 ("TEMP" . "#491d8b")
		 ("FIXME" . "#a56eff")
		 ("XXX+" . "#6929c4")
		 ("REVIEW" . "#1192e8")
		 ("DEPRECATED" . "#003a6d"))))
 '(ibuffer-deletion-face (quote dired-flagged))
 '(ibuffer-filter-group-name-face (quote dired-mark))
 '(ibuffer-marked-face (quote dired-marked))
 '(ibuffer-title-face (quote dired-header))
 '(ido-enable-flex-matching t)
 '(lua-indent-level 2)
 '(package-selected-packages
	 (quote
		(virtualenvwrapper dired-subtree lua-mode company tide flycheck use-package yaml-mode neotree jedi evil helm)))
 '(safe-local-variable-values (quote ((eval prettier-mode t))))
 '(tab-width 2)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
	 (quote
		((20 . "#8a3ffc")
		 (40 . "#007d79")
		 (60 . "#005d5d")
		 (80 . "#6929c4")
		 (100 . "#d12771")
		 (120 . "#9f1853")
		 (140 . "#565151")
		 (160 . "#525252")
		 (180 . "#198038")
		 (200 . "#0e6027")
		 (220 . "#1192e8")
		 (240 . "#00539a")
		 (260 . "#0072c3")
		 (280 . "#4d5358")
		 (300 . "#0f62fe")
		 (320 . "#0043ce")
		 (340 . "#4589ff")
		 (360 . "#009d9a"))))
 '(vc-annotate-very-old-color nil)
 '(xterm-color-names
	 ["#21272a" "#8a3ffc" "#198038" "#d12771" "#0f62fe" "#007d79" "#0072c3" "#6f6f6f"])
 '(xterm-color-names-bright
	 ["#262626" "#6929c4" "#0e6027" "#9f1853" "#0043ce" "#005d5d" "#00539a" "#697077"]))
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
(set-frame-font "IBM Plex Mono 8")
(setq make-backup-files nil)
(setq auto-save-default nil)

;; projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Ido
;; (setq ido-enable-flex-matching t)
;; (setq ido-everywhere t)
;; (ido-mode 1)

;; dired-subtree from dired hacks
;; (use-package dired-subtree
;;   :config
;;   (bind-keys :map dired-mode-map
;;              ("]" . dired-subtree-insert)
;;              ("[" . dired-subtree-remove)))


;; Keybindings
(global-set-key (kbd "M-o") 'next-multiframe-window)


;; evil
(require 'evil)
(evil-mode 1)
(global-display-line-numbers-mode)


;; flycheck
(require 'flycheck)
(global-flycheck-mode)
(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))


;; javascript
(require 'nvm)
(nvm-use "12.14.1")
(dir-locals-set-class-variables 'use-prettier-js
                                '((js-mode . ((eval . (prettier-mode t))))))
(dir-locals-set-directory-class "/home/daniel/src/edrolo/" 'use-prettier-js)
(flycheck-add-mode 'javascript-eslint 'web-mode)


;; credit: 
(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint
          (and root
               (expand-file-name "node_modules/.bin/eslint"
                                 root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))

(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)

;; typescript
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))


;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; aligns annotation to the right hand side
;; (setq company-tooltip-align-annotations t)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; tsx is typescript too
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
    (lambda ()
    (when (string-equal "tsx" (file-name-extension buffer-file-name))
	(setup-tide-mode))))

;; enable typescript-eslint checker
;; (flycheck-add-mode 'typescript-eslint 'web-mode)

;; python
(require 'py-yapf)
(add-hook 'python-mode-hook 'py-yapf-enable-on-save)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)



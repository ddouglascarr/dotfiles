;;; ibm-dark-theme.el --- Accessible dark theme (WCAG AAA) -*- lexical-binding:t -*-

;; Copyright (c) 2019-2020 Free Software Foundation, Inc.

;; Author: Protesilaos Stavrou <info@protesilaos.com>
;; Author: William Vaughn <vaughnwilld@gmail.com>
;; URL: https://gitlab.com/protesilaos/modus-themes
;; Package-Version: 20200513.601
;; Version: 0.8.1
;; Package-Requires: ((emacs "26.1"))
;; Keywords: faces, theme, accessibility

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; This theme is designed for colour-contrast accessibility.
;;
;; 1. Provide a consistent minimum contrast ratio between background and
;; foreground values of 7:1 or higher.  This meets the highest such
;; accessibility criterion per the guidelines of the Worldwide Web
;; Consortium's Working Group on Accessibility (WCAG AAA standard).
;;
;; 2. Offer as close to full face coverage as possible.  The list is
;; already quite long (see further below), with more additions to follow
;; as part of the ongoing development process.
;;
;; The theme provides the following customisation options, all of which
;; are disabled by default:
;;
;;     ibm-dark-theme-slanted-constructs
;;     ibm-dark-theme-bold-constructs
;;     ibm-dark-theme-proportional-fonts
;;     ibm-dark-theme-rainbow-headings
;;     ibm-dark-theme-section-headings
;;     ibm-dark-theme-scale-headings
;;     ibm-dark-theme-visible-fringes
;;     ibm-dark-theme-distinct-org-blocks
;;     ibm-dark-theme-3d-modeline
;;     ibm-dark-theme-subtle-diffs
;;     ibm-dark-theme-override-colors-alist
;;
;; The default scale is as follows (it can be customised as well):
;;
;;     ibm-dark-theme-scale-1 1.05
;;     ibm-dark-theme-scale-2 1.1
;;     ibm-dark-theme-scale-3 1.15
;;     ibm-dark-theme-scale-4 1.2
;;     ibm-dark-theme-scale-5 1.3
;;
;; What follows is the list of explicitly supported packages or face
;; groups (there are implicitly supported packages as well, which
;; inherit from font-lock or some basic group).  You are encouraged to
;; notify me of any missing package or change you would like to see.
;;
;;     ace-window
;;     ag
;;     alert
;;     all-the-icons
;;     annotate
;;     anzu
;;     apropos
;;     apt-sources-list
;;     artbollocks-mode
;;     auctex and TeX
;;     auto-dim-other-buffers
;;     avy
;;     breakpoint (provided by built-in gdb-mi.el)
;;     bm
;;     buffer-expose
;;     calendar and diary
;;     calfw
;;     centaur-tabs
;;     change-log and log-view (`vc-print-log' and `vc-print-root-log')
;;     cider
;;     circe
;;     color-rg
;;     column-enforce-mode
;;     company-mode
;;     company-posframe
;;     compilation-mode
;;     completions
;;     counsel
;;     counsel-css
;;     counsel-notmuch
;;     counsel-org-capture-string
;;     cov
;;     csv-mode
;;     ctrlf
;;     custom (M-x customize)
;;     dap-mode
;;     dashboard (emacs-dashboard)
;;     deadgrep
;;     debbugs
;;     define-word
;;     deft
;;     diff-hl
;;     diff-mode
;;     dim-autoload
;;     dired
;;     dired-async
;;     dired-git
;;     dired-git-info
;;     dired-narrow
;;     dired-subtree
;;     diredfl
;;     disk-usage
;;     doom-modeline
;;     dynamic-ruler
;;     easy-jekyll
;;     easy-kill
;;     ebdb
;;     ediff
;;     eglot
;;     eldoc-box
;;     elfeed
;;     elfeed-score
;;     emms
;;     enhanced-ruby-mode
;;     epa
;;     equake
;;     erc
;;     ert
;;     eshell
;;     evil (evil-mode)
;;     evil-goggles
;;     evil-visual-mark-mode
;;     eww
;;     eyebrowse
;;     fancy-dabbrev
;;     flycheck
;;     flycheck-indicator
;;     flycheck-posframe
;;     flymake
;;     flyspell
;;     flyspell-correct
;;     flx
;;     freeze-it
;;     frog-menu
;;     focus
;;     fold-this
;;     font-lock (generic syntax highlighting)
;;     forge
;;     fountain (fountain-mode)
;;     geiser
;;     git
;;     git-gutter (and variants)
;;     git-lens
;;     git-timemachine
;;     git-walktree
;;     gnus
;;     helm
;;     helm-ls-git
;;     helm-switch-shell
;;     helm-xref
;;     helpful
;;     highlight-blocks
;;     highlight-defined
;;     highlight-escape-sequences (`hes-mode')
;;     highlight-numbers
;;     highlight-symbol
;;     highlight-thing
;;     hl-fill-column
;;     hl-line-mode
;;     hl-todo
;;     hydra
;;     ibuffer
;;     icomplete
;;     ido-mode
;;     iedit
;;     iflipb
;;     imenu-list
;;     indium
;;     info
;;     info-colors
;;     interaction-log
;;     ioccur
;;     isearch, occur, etc.
;;     ivy
;;     ivy-posframe
;;     jira (org-jira)
;;     js2-mode
;;     julia
;;     jupyter
;;     kaocha-runner
;;     keycast
;;     line numbers (`display-line-numbers-mode' and global variant)
;;     lsp-mode
;;     lsp-ui
;;     magit
;;     magit-imerge
;;     man
;;     markdown-mode
;;     markup-faces (`adoc-mode')
;;     mentor
;;     messages
;;     modeline
;;     mood-line
;;     mu4e
;;     mu4e-conversation
;;     multiple-cursors
;;     neotree
;;     no-emoji
;;     notmuch
;;     num3-mode
;;     orderless
;;     org
;;     org-journal
;;     org-noter
;;     org-pomodoro
;;     org-recur
;;     org-roam
;;     org-superstar
;;     org-treescope
;;     origami
;;     outline-mode
;;     outline-minor-faces
;;     package (M-x list-packages)
;;     page-break-lines
;;     paradox
;;     paren-face
;;     parrot
;;     pass
;;     persp-mode
;;     perspective
;;     phi-grep
;;     phi-search
;;     pomidor
;;     powerline
;;     powerline-evil
;;     proced
;;     prodigy
;;     rainbow-blocks
;;     rainbow-identifiers
;;     rainbow-delimiters
;;     rcirc
;;     regexp-builder (also known as `re-builder')
;;     rg
;;     ripgrep
;;     rmail
;;     ruler-mode
;;     sallet
;;     selectrum
;;     sesman
;;     shell-script-mode
;;     show-paren-mode
;;     side-notes
;;     skewer-mode
;;     smart-mode-line
;;     smartparens
;;     smerge
;;     speedbar
;;     spell-fu
;;     stripes
;;     suggest
;;     switch-window
;;     swiper
;;     swoop
;;     sx
;;     symbol-overlay
;;     tab-bar-mode
;;     tab-line-mode
;;     syslog-mode
;;     trashed
;;     telephone-line
;;     term
;;     tomatinho
;;     transient (pop-up windows like Magit's)
;;     treemacs
;;     tuareg
;;     undo-tree
;;     vc (built-in mode line status for version control)
;;     vc-annotate (C-x v g)
;;     vdiff
;;     vimish-fold
;;     visible-mark
;;     visual-regexp
;;     volatile-highlights
;;     vterm
;;     wcheck-mode
;;     web-mode
;;     wgrep
;;     which-function-mode
;;     which-key
;;     whitespace-mode
;;     window-divider-mode
;;     winum
;;     writegood-mode
;;     woman
;;     xah-elisp-mode
;;     xref
;;     xterm-color (and ansi-colors)
;;     yaml-mode
;;     yasnippet
;;     ztree

;;; Code:



(deftheme ibm-dark
  "Dark theme based on IBM Design Language")

;; These faces will be inherited by actual constructs.  They are meant
;; for those cases where a face needs to distinguish its output from
;; the rest of the text, such as `isearch' and `occur'…  We define
;; these separately in order to combine each colour with its
;; appropriate foreground value.  This is to ensure a consistent
;; contrast ratio of >= 7:1.
(defgroup ibm-theme ()
  "Dark theme based on IBM Design Language."
  :group 'faces
  :prefix "ibm-theme-"
  :link '(url-link :tag "GitLab" "https://gitlab.com/protesilaos/ibm-themes")
  :tag "IBM Dark")

(defface ibm-theme-subtle-danger nil t)
(defface ibm-theme-subtle-success nil t)
(defface ibm-theme-subtle-warning nil t)
(defface ibm-theme-subtle-primary nil t)
(defface ibm-theme-subtle-secondary nil t)
(defface ibm-theme-subtle-info nil t)
(defface ibm-theme-subtle-neutral nil t)
(defface ibm-theme-intense-danger nil t)
(defface ibm-theme-intense-success nil t)
(defface ibm-theme-intense-warning nil t)
(defface ibm-theme-intense-primary nil t)
(defface ibm-theme-intense-secondary nil t)
(defface ibm-theme-intense-info nil t)
(defface ibm-theme-intense-neutral nil t)
(defface ibm-theme-refine-danger nil t)
(defface ibm-theme-refine-success nil t)
(defface ibm-theme-refine-warning nil t)
(defface ibm-theme-refine-primary nil t)
(defface ibm-theme-refine-secondary nil t)
(defface ibm-theme-refine-info nil t)
(defface ibm-theme-active-danger nil t)
(defface ibm-theme-active-success nil t)
(defface ibm-theme-active-warning nil t)
(defface ibm-theme-active-primary nil t)
(defface ibm-theme-active-secondary nil t)
(defface ibm-theme-active-info nil t)
(defface ibm-theme-fringe-danger nil t)
(defface ibm-theme-fringe-success nil t)
(defface ibm-theme-fringe-warning nil t)
(defface ibm-theme-fringe-primary nil t)
(defface ibm-theme-fringe-secondary nil t)
(defface ibm-theme-fringe-info nil t)
(defface ibm-theme-special-cold nil t)
(defface ibm-theme-special-mild nil t)
(defface ibm-theme-special-warm nil t)
(defface ibm-theme-special-calm nil t)
(defface ibm-theme-diff-added nil t)
(defface ibm-theme-diff-changed nil t)
(defface ibm-theme-diff-removed nil t)
(defface ibm-theme-diff-refine-added nil t)
(defface ibm-theme-diff-refine-changed nil t)
(defface ibm-theme-diff-refine-removed nil t)
(defface ibm-theme-diff-focus-added nil t)
(defface ibm-theme-diff-focus-changed nil t)
(defface ibm-theme-diff-focus-removed nil t)
(defface ibm-theme-diff-heading nil t)

;; User-facing customisation options.  They are all deactivated by
;; default (users must opt in).
(defcustom ibm-dark-theme-slanted-constructs nil
  "Use slanted text in more code constructs (italics or oblique)."
  :type 'boolean)

(defcustom ibm-dark-theme-bold-constructs nil
  "Use bold text in more code constructs."
  :type 'boolean)

(defcustom ibm-dark-theme-proportional-fonts nil
  "Use proportional fonts (variable-pitch) in headings."
  :type 'boolean)

(defcustom ibm-dark-theme-rainbow-headings nil
  "Use more saturated colours for headings."
  :type 'boolean)

(defcustom ibm-dark-theme-section-headings nil
  "Use a background and an overline in headings."
  :type 'boolean)

(defcustom ibm-dark-theme-scale-headings nil
  "Use font scaling for headings."
  :type 'boolean)

(defcustom ibm-dark-theme-scale-1 1.05
  "Font size that is slightly larger than the base value.
The default is a floating point that is interpreted as a multiple
of the base font size.  However, the variable also accepts an
integer, understood as an absolute height (e.g. a value of 140 is
the same as setting the font at 14 point size).

For more on the matter, read the documentation of
`set-face-attribute', specifically the ':height' section."
  :type 'number)

(defcustom ibm-dark-theme-scale-2 1.1
  "Font size slightly larger than `ibm-dark-theme-scale-1'.
The default is a floating point that is interpreted as a multiple
of the base font size.  However, the variable also accepts an
integer, understood as an absolute height (e.g. a value of 140 is
the same as setting the font at 14 point size).

For more on the matter, read the documentation of
`set-face-attribute', specifically the ':height' section."
  :type 'number)

(defcustom ibm-dark-theme-scale-3 1.15
  "Font size slightly larger than `ibm-dark-theme-scale-2'.
The default is a floating point that is interpreted as a multiple
of the base font size.  However, the variable also accepts an
integer, understood as an absolute height (e.g. a value of 140 is
the same as setting the font at 14 point size).

For more on the matter, read the documentation of
`set-face-attribute', specifically the ':height' section."
  :type 'number)

(defcustom ibm-dark-theme-scale-4 1.2
  "Font size slightly larger than `ibm-dark-theme-scale-3'.
The default is a floating point that is interpreted as a multiple
of the base font size.  However, the variable also accepts an
integer, understood as an absolute height (e.g. a value of 140 is
the same as setting the font at 14 point size).

For more on the matter, read the documentation of
`set-face-attribute', specifically the ':height' section."
  :type 'number)

(defcustom ibm-dark-theme-scale-5 1.3
  "Font size slightly larger than `ibm-dark-theme-scale-4'.
The default is a floating point that is interpreted as a multiple
of the base font size.  However, the variable also accepts an
integer, understood as an absolute height (e.g. a value of 140 is
the same as setting the font at 14 point size).

For more on the matter, read the documentation of
`set-face-attribute', specifically the ':height' section."
  :type 'number)

(defcustom ibm-dark-theme-visible-fringes nil
  "Use a visible style for fringes."
  :type 'boolean)

(defcustom ibm-dark-theme-distinct-org-blocks nil
  "Use a distinct background for `org-mode' source blocks."
  :type 'boolean)

(defcustom ibm-dark-theme-3d-modeline nil
  "Use a three-dimensional style for the active mode line."
  :type 'boolean)

(defcustom ibm-dark-theme-subtle-diffs nil
  "Use fewer/dim backgrounds in `diff-mode', `ediff',`magit'."
  :type 'boolean)

;; Helper functions that are meant to ease the implementation of the
;; above customisation options.
(defun ibm-dark-theme-heading-foreground (subtle rainbow)
  "Apply foreground value to headings.
SUBTLE is the default aesthetic.
RAINBOW is the saturated one."
  (if ibm-dark-theme-rainbow-headings
      (list :foreground rainbow)
    (list :foreground subtle)))

(defun ibm-dark-theme-heading-block (bg fg)
  "Conditionally extend heading styles.
Apply BG to background and FG to overline."
  (if ibm-dark-theme-section-headings
      (append
       (and (>= emacs-major-version 27) '(:extend t))
       (list :background bg :overline fg))
    (list :background nil :overline nil)))

(defun ibm-dark-theme-org-todo-block (bgbox fgbox fg)
  "Conditionally extend the styles of Org keywords.
BGBOX applies to the background.
FGBOX applies to the foreground and the border.
FG is used when no block style is in effect."
  (if ibm-dark-theme-section-headings
      (list :background bgbox :foreground fgbox :box (list :color fgbox))
    (list :foreground fg)))

(defun ibm-dark-theme-org-src-block (bgsrc bg)
  "Conditionally set the styles of Org source blocks.
BGSRC applies to a distinct background.  BG is used to keep
blocks the same background as the rest of the buffer."
  (if ibm-dark-theme-distinct-org-blocks
      (list :background bgsrc :extend t)
    (list :background bg)))

(defun ibm-dark-theme-modeline-box (col3d col &optional btn int)
  "Control the box properties of the mode line.
COL3D is the border that is intended for the three-dimensional modeline.
COL applies to the two-dimensional modeline.
Optional BTN provides the 3d button style.
Optional INT defines a border width."
  (let* ((style (if btn 'released-button nil))
         (int (if int int 1)))
    (if ibm-dark-theme-3d-modeline
        (list :line-width int :color col3d :style style)
      (list :line-width 1 :color col :style nil))))

(defun ibm-dark-theme-modeline-props (bg3d fg3d &optional bg fg)
  "Control the background and foreground of the mode line.
BG is the modeline's background.
FG is the modeline's foreground.
BG3D and FG3D apply to the three-dimensional modeline style."
  (if ibm-dark-theme-3d-modeline
      (list :background bg3d :foreground fg3d)
    (list :background bg :foreground fg)))

(defun ibm-dark-theme-diffs (subtle-bg subtle-fg intense-bg intense-fg)
  "Colour combinations for `ibm-dark-theme-subtle-diffs'.

SUBTLE-BG should be similar or the same as the main background
SUBTLE-FG should be an appropriate accent value
INTENSE-BG should be one of the dedicated backgrounds for diffs
INTENSE-FG should be one of the dedicated foregrounds for diffs"
  (if ibm-dark-theme-subtle-diffs
      (list :background subtle-bg :foreground subtle-fg)
    (list :background intense-bg :foreground intense-fg)))

(defun ibm-dark-theme-scale (amount)
  "Scale heading by AMOUNT.

AMOUNT is a customisation option."
  (when ibm-dark-theme-scale-headings
    (list :height amount)))

;; Define colour palette.  Each colour must have a >= 7:1 contrast
;; ratio relative to the foreground/background colour it is rendered
;; against.
;;
;; The design of the colour palette and of the macro that maps it to
;; faces is copied from zenbern-theme.el from commit 7dd7968:
;; https://github.com/bbatsov/zenburn-emacs
(eval-when-compile
  (defvar ibm-dark-theme-default-colors-alist
    '(;; base values
      ;; IBM Cool Gray 90/60
      ("bg-main" . "#21272a") ("fg-main" . "#697077")
      ;; IBM Gray 90/60
      ("bg-alt" . "#262626") ("fg-alt" . "#6f6f6f")
      ;; IBM Warm Gray 100/70
      ("bg-dim" . "#121619") ("fg-dim" . "#4d5358")
      ;; specifically for on/off states (e.g. `mode-line')
      ;;
      ;; must be combined with themselves
      ;; IBM Cool Gray 80/40
      ("bg-active" . "#343a3f") ("fg-active" . "#a2a9b0")
      ;; IBM  Cool Gray Black/80
      ("bg-inactive" . "#000000") ("fg-inactive" . "#343a3f")
      ;; special base values, used only for cases where the above
      ;; fg-* or bg-* cannot or should not be used (to avoid confusion)
      ;; must be combined with: {fg,bg}-{main,alt,dim}
      ;; IBM `100/70
      ("bg-special-cold" . "#121619") ("fg-special-cold" . "#4d5358")
      ("bg-special-mild" . "#161616") ("fg-special-mild" . "#525252")
      ("bg-special-warm" . "#171414") ("fg-special-warm" . "#565151")
      ;; IBM Gray 70/50
      ("bg-special-calm" . "#525252") ("fg-special-calm" . "#8d8d8d")
      ;; styles for the main constructs
      ;;
      ;; must be combined with: `bg-main', `bg-alt', `bg-dim'
      ;; IBM 60
      ("danger" . "#8a3ffc") ("success" . "#198038")
      ("warning" . "#d12771") ("primary" . "#0f62fe")
      ("secondary" . "#007d79") ("info" . "#0072c3")
      ;; styles for common, but still specialised constructs
      ;;
      ;; must be combined with: `bg-main', `bg-alt', `bg-dim'
      ;; IBM 70
      ("danger-alt" . "#6929c4") ("success-alt" . "#0e6027")
      ("warning-alt" . "#9f1853") ("primary-alt" . "#0043ce")
      ("secondary-alt" . "#005d5d") ("info-alt" . "#00539a")
      ;; same purpose as above, just slight differences
      ;;
      ;; must be combined with: `bg-main', `bg-alt', `bg-dim'
      ;; IBM 50
      ("danger-alt-other" . "#a56eff") ("success-alt-other" . "#002d9c")
      ("warning-alt-other" . "#ee5396") ("primary-alt-other" . "#4589ff")
      ("secondary-alt-other" . "#009d9a") ("info-alt-other" . "#1192e8")
      ;; styles for elements that should be very subtle
      ;;
      ;; must be combined with: `bg-main', `bg-alt', `bg-dim'
      ;; IBM 80
      ("danger-nuanced" . "#491d8b") ("success-nuanced" . "#044317")
      ("warning-nuanced" . "#740937") ("primary-nuanced" . "#002d9c")
      ("secondary-nuanced" . "#004144") ("info-nuanced" . "#003a6d")
      ;; styles for slightly accented background
      ;;
      ;; must be combined with any of the above foreground values
      ;; IBM 80
      ("danger-nuanced-bg" . "#491d8b") ("success-nuanced-bg" . "#044317")
      ("warning-nuanced-bg" . "#740937") ("primary-nuanced-bg" . "#002d9c")
      ("secondary-nuanced-bg" . "#004144") ("info-nuanced-bg" . "#003a6d")
      ;; styles for elements that should draw attention to themselves
      ;;
      ;; must be combined with: `bg-main'
      ;; IBM 40
      ("danger-intense" . "#be95ff") ("success-intense" . "#42be65")
      ("warning-intense" . "#ff7eb6") ("primary-intense" . "#78a9ff")
      ("secondary-intense" . "#08bdba") ("info-intense" . "#33b1ff")
      ;; styles for background elements that should be visible yet
      ;; subtle
      ;;
      ;; must be combined with: `fg-dim'
      ;; IBM 90
      ("danger-subtle-bg" . "#31135e") ("success-subtle-bg" . "#022d0d")
      ("warning-subtle-bg" . "#510224") ("primary-subtle-bg" . "#001d6c")
      ("secondary-subtle-bg" . "#022b30") ("info-subtle-bg" . "#012749")
      ;; styles for background elements that should be visible and
      ;; distinguishable
      ;;
      ;; must be combined with: `fg-main'
      ;; IBM 40
      ("danger-intense-bg" . "#be95ff") ("success-intense-bg" . "#42be65")
      ("warning-intense-bg" . "#ff7eb6") ("primary-intense-bg" . "#78a9ff")
      ("secondary-intense-bg" . "#08bdba") ("info-intense-bg" . "#33b1ff")
      ;; styles for refined contexts where both the foreground and the
      ;; background need to have the same/similar hue
      ;;
      ;; must be combined with themselves OR the foregrounds can be
      ;; combined with any of the base backgrounds
      ;; IBM 80/40
      ("danger-refine-bg" . "#491d8b") ("danger-refine-fg" . "#be95ff")
      ("success-refine-bg" . "#044317") ("success-refine-fg" . "#42be65")
      ("warning-refine-bg" . "#740937") ("warning-refine-fg" . "#ff7eb6")
      ("primary-refine-bg" . "#002d9c") ("primary-refine-fg" . "#78a9ff")
      ("secondary-refine-bg" . "#004144") ("secondary-refine-fg" . "#08bdba")
      ("info-refine-bg" . "#003a6d") ("info-refine-fg" . "#33b1ff")
      ;; styles that are meant exclusively for the mode line
      ;;
      ;; must be combined with: `bg-active', `bg-inactive'
      ;; IBM 30
      ("danger-active" . "#d4bbff") ("success-active" . "#6fdc8c")
      ("warning-active" . "#ffafd2") ("primary-active" . "#a6c8ff")
      ("secondary-active" . "#3ddbd9") ("info-active" . "#82cfff")
      ;; styles that are meant exclusively for the fringes
      ;;
      ;; must have a minimum contrast ratio of 1.5:1 with `bg-inactive'
      ;; and be combined with `fg-main' or `fg-dim'
      ;; IBM 100
      ("danger-fringe-bg" . "#1c0f30") ("success-fringe-bg" . "#071908")
      ("warning-fringe-bg" . "#2a0a18") ("primary-fringe-bg" . "#001141")
      ("secondary-fringe-bg" . "#081a1c") ("info-fringe-bg" . "#061727")
      ;; styles reserved for specific faces
      ;;
      ;; `bg-hl-line' is between `bg-dim' and `bg-alt', so it should
      ;; work with all accents that cover those two, plus `bg-main'
      ;;
      ;; `bg-header' is between `bg-active' and `bg-inactive', so it
      ;; can be combined with any of the "active" values, plus the
      ;; "special" and base foreground colours
      ;;
      ;; `bg-paren-match', `bg-region' and `bg-tab-active' must be
      ;; combined with `fg-main', while `bg-tab-inactive' should be
      ;; combined with `fg-dim'
      ;;
      ;; `bg-tab-bar' is only intended for the bar that holds the tabs and
      ;; can only be combined with `fg-main'
      ;;
      ;; `fg-tab-active' is meant to be combined with `bg-tab-active',
      ;; though only for styling special elements, such as underlining
      ;; the current tab
      ;;
      ;; `fg-escape-char-construct' and `fg-escape-char-backslash' can
      ;; be combined `bg-main', `bg-dim', `bg-alt'
      ;;
      ;; `fg-lang-error', `fg-lang-warning', `fg-lang-note' can be
      ;; combined with `bg-main', `bg-dim', `bg-alt'
      ;;
      ;; `fg-mark', `fg-mark-del', `fg-mark-other' can be combined with
      ;; `bg-main', `bg-dim', `bg-alt', `bg-hl-line'
      ;;
      ;; `fg-unfocused' must be combined with `fg-main'
      ;;
      ;; the window divider colours apply to faces with just an fg value
      ;;
      ;; all pairs are combinable with themselves
      ;; IBM Gray 100
      ("bg-hl-line" . "#161616")
      ;; IBM Cyan 70
      ("bg-paren-match" . "#00539a")
      ;; IBM Warm Gray 90
      ("bg-region" . "#393939")

      ;; IBM Warm Gray 90
      ("bg-tab-bar" . "#272525")
      ;; IBM Warm Gray 100
      ("bg-tab-active" . "#171414")
      ;; IBM Warm Gray 80
      ("bg-tab-inactive" . "#3c3838")
      ;; IBM Teal 50
      ("fg-tab-active" . "#009d9a")

      ;; IBM Teal 40
      ("fg-escape-char-construct" . "#08bdba")
      ;; IBM Green 40
      ("fg-escape-char-backslash" . "#42be65")

      ;; IBM Purple 60
      ("fg-lang-error" . "#8a3ffc")
      ;; IBM Magenta 60
      ("fg-lang-warning" . "#d12771")
      ;; IBM Cyan 60
      ("fg-lang-note" . "#0072c3")

      ;; IBM Gray 50
      ("fg-window-divider-inner" . "#8d8d8d")
      ;; IBM Warm Gray 70
      ("fg-window-divider-outer" . "#393939")

      ;; IBM Gray 70
      ("fg-unfocused" . "#525252")

      ;; IBM Cool Gray 50/100
      ("bg-header" . "#878d96") ("fg-header" . "#121619")

      ;; IBM Warm Gray 100/40
      ("bg-whitespace" . "#171414") ("fg-whitespace" . "#ada8a8")

      ;; IBM Cyan 90/20
      ("bg-diff-heading" . "#012749") ("fg-diff-heading" . "#bae6ff")
      ;; IBM Green 70 / Cool Gray 30
      ("bg-diff-added" . "#012749") ("fg-diff-added" . "#6fdc8c")
      ;; IBM Teal 70 / Cool Gray 30
      ("bg-diff-changed" . "#005d5d") ("fg-diff-changed" . "#3ddbd9")
      ;; IBM Purple 70 / Cool Gray 30
      ("bg-diff-removed" . "#6929c4") ("fg-diff-removed" . "#d4bbff")

      ("bg-diff-refine-added" . "#005a36") ("fg-diff-refine-added" . "#e0f6e0")
      ("bg-diff-refine-changed" . "#585800") ("fg-diff-refine-changed" . "#ffffcc")
      ("bg-diff-refine-removed" . "#852828") ("fg-diff-refine-removed" . "#ffd9eb")

      ;; IBM Green 60/20
      ("bg-diff-focus-added" . "#198038") ("fg-diff-focus-added" . "#a7f0ba")
      ;; IBM Teal 60 / Cool Gray 20
      ("bg-diff-focus-changed" . "#007d79") ("fg-diff-focus-changed" . "#9ef0f0")
      ;; IBM Purple 60 / Cool Gray 20
      ("bg-diff-focus-removed" . "#8a3ffc") ("fg-diff-focus-removed" . "#e8daff")

      ;; IBM Warm Gray 70/40
      ("bg-diff-neutral-0" . "#736f6f") ("fg-diff-neutral-0" . "#ada8a8")
      ;; IBM Cool Gray 70/40
      ("bg-diff-neutral-1" . "#4d5358") ("fg-diff-neutral-1" . "#a2a9b0")
      ;; IBM Gray 80/40
      ("bg-diff-neutral-2" . "#393939") ("fg-diff-neutral-2" . "#a8a8a8")

      ;; IBM Green 80/30
      ("bg-mark" . "#044317") ("fg-mark" . "#6fdc8c")
      ;; IBM Purple 80/30
      ("bg-mark-del" . "#491d8b") ("fg-mark-del" . "#d4bbff")
      ;; IBM Magenta 80/30
      ("bg-mark-other" . "#740937") ("fg-mark-other" . "#ffafd2"))
    "The entire palette of `ibm-dark-theme'.
Each element has the form (NAME . HEX).")

  (defcustom ibm-dark-theme-override-colors-alist '()
    "Place to override default theme colors.
You can override a subset of the theme's default colors by
defining them in this alist."
    :type '(alist
            :key-type (string :tag "Name")
            :value-type (string :tag " Hex")))

  (defmacro ibm-dark-theme-with-color-variables (&rest body)
    "`let' bind all colours around BODY.
Also bind `class' to ((class color) (min-colors 89))."
    (declare (indent 0))
    `(let ((class '((class color) (min-colors 89)))
           ,@(mapcar (lambda (cons)
                       (list (intern (car cons)) (cdr cons)))
                     (append ibm-dark-theme-default-colors-alist
                             ibm-dark-theme-override-colors-alist))
           ;; conditional styles that evaluate user-facing customisation
           ;; options
           (ibm-theme-slant
            (if ibm-dark-theme-slanted-constructs 'italic 'normal))
           (ibm-theme-bold
            (if ibm-dark-theme-bold-constructs 'bold 'normal))
           (ibm-theme-variable-pitch
            (if ibm-dark-theme-proportional-fonts 'variable-pitch 'default)))
       ,@body)))



(ibm-dark-theme-with-color-variables
  (custom-theme-set-faces
   'ibm-dark
   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   ;; custom faces that are inherited by other constructs below ;;
   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   ;;; subtle coloured backgrounds
   `(ibm-theme-subtle-danger ((,class (:background ,danger-subtle-bg :foreground ,fg-dim))))
   `(ibm-theme-subtle-success ((,class (:background ,success-subtle-bg :foreground ,fg-dim))))
   `(ibm-theme-subtle-warning ((,class (:background ,warning-subtle-bg :foreground ,fg-dim))))
   `(ibm-theme-subtle-primary ((,class (:background ,primary-subtle-bg :foreground ,fg-dim))))
   `(ibm-theme-subtle-secondary ((,class (:background ,secondary-subtle-bg :foreground ,fg-dim))))
   `(ibm-theme-subtle-info ((,class (:background ,info-subtle-bg :foreground ,fg-dim))))
   `(ibm-theme-subtle-neutral ((,class (:background ,bg-special-cold :foreground ,fg-special-cold))))
   ;;; intense coloured backgrounds
   `(ibm-theme-intense-danger ((,class (:background ,danger-intense-bg :foreground ,fg-dim))))
   `(ibm-theme-intense-success ((,class (:background ,success-intense-bg :foreground ,fg-dim))))
   `(ibm-theme-intense-warning ((,class (:background ,warning-intense-bg :foreground ,fg-dim))))
   `(ibm-theme-intense-primary ((,class (:background ,primary-intense-bg :foreground ,fg-dim))))
   `(ibm-theme-intense-secondary ((,class (:background ,secondary-intense-bg :foreground ,fg-dim))))
   `(ibm-theme-intense-info ((,class (:background ,info-intense-bg :foreground ,fg-dim))))
   `(ibm-theme-intense-neutral ((,class (:background ,bg-active :foreground ,fg-main))))
   ;;; refined background and foreground combinations
   `(ibm-theme-refine-danger ((,class (:background ,danger-refine-bg :foreground ,danger-refine-fg))))
   `(ibm-theme-refine-success ((,class (:background ,success-refine-bg :foreground ,success-refine-fg))))
   `(ibm-theme-refine-warning ((,class (:background ,warning-refine-bg :foreground ,warning-refine-fg))))
   `(ibm-theme-refine-primary ((,class (:background ,primary-refine-bg :foreground ,primary-refine-fg))))
   `(ibm-theme-refine-secondary ((,class (:background ,secondary-refine-bg :foreground ,secondary-refine-fg))))
   `(ibm-theme-refine-info ((,class (:background ,info-refine-bg :foreground ,info-refine-fg))))
   ;;; invert the colours used on the "active" backgrounds
   ;;; mostly for use on the mode line
   `(ibm-theme-active-danger ((,class (:background ,danger-active :foreground ,bg-active))))
   `(ibm-theme-active-success ((,class (:background ,success-active :foreground ,bg-active))))
   `(ibm-theme-active-warning ((,class (:background ,warning-active :foreground ,bg-active))))
   `(ibm-theme-active-primary ((,class (:background ,primary-active :foreground ,bg-active))))
   `(ibm-theme-active-secondary ((,class (:background ,secondary-active :foreground ,bg-active))))
   `(ibm-theme-active-info ((,class (:background ,info-active :foreground ,bg-active))))
   ;;; for fringe indicators
   `(ibm-theme-fringe-danger ((,class (:background ,danger-fringe-bg :foreground ,fg-dim))))
   `(ibm-theme-fringe-success ((,class (:background ,success-fringe-bg :foreground ,fg-dim))))
   `(ibm-theme-fringe-warning ((,class (:background ,warning-fringe-bg :foreground ,fg-dim))))
   `(ibm-theme-fringe-primary ((,class (:background ,primary-fringe-bg :foreground ,fg-dim))))
   `(ibm-theme-fringe-secondary ((,class (:background ,secondary-fringe-bg :foreground ,fg-dim))))
   `(ibm-theme-fringe-info ((,class (:background ,info-fringe-bg :foreground ,fg-dim))))
   ;;; special base values that are closer to the grayscale than
   ;;; the accents defined above
   `(ibm-theme-special-cold ((,class (:background ,bg-special-cold :foreground ,fg-special-cold))))
   `(ibm-theme-special-mild ((,class (:background ,bg-special-mild :foreground ,fg-special-mild))))
   `(ibm-theme-special-warm ((,class (:background ,bg-special-warm :foreground ,fg-special-warm))))
   `(ibm-theme-special-calm ((,class (:background ,bg-special-calm :foreground ,fg-special-calm))))
   ;;; colour combinations intended for `diff-mode' or equivalent
   `(ibm-theme-diff-added ((,class (:background ,bg-diff-added :foreground ,fg-diff-added))))
   `(ibm-theme-diff-changed ((,class (:background ,bg-diff-changed :foreground ,fg-diff-changed))))
   `(ibm-theme-diff-removed ((,class (:background ,bg-diff-removed :foreground ,fg-diff-removed))))
   `(ibm-theme-diff-refine-added ((,class (:background ,bg-diff-refine-added :foreground ,fg-diff-refine-added))))
   `(ibm-theme-diff-refine-changed ((,class (:background ,bg-diff-refine-changed :foreground ,fg-diff-refine-changed))))
   `(ibm-theme-diff-refine-removed ((,class (:background ,bg-diff-refine-removed :foreground ,fg-diff-refine-removed))))
   `(ibm-theme-diff-focus-added ((,class (:background ,bg-diff-focus-added :foreground ,fg-diff-focus-added))))
   `(ibm-theme-diff-focus-changed ((,class (:background ,bg-diff-focus-changed :foreground ,fg-diff-focus-changed))))
   `(ibm-theme-diff-focus-removed ((,class (:background ,bg-diff-focus-removed :foreground ,fg-diff-focus-removed))))
   `(ibm-theme-diff-heading ((,class (:background ,bg-diff-heading :foreground ,fg-diff-heading))))
   ;;;;;;;;;;;;;;;;;;;
   ;; actual styles ;;
   ;;;;;;;;;;;;;;;;;;;
   ;;; default constructs
   ;;;; absolute essentials
   `(default ((,class (:background ,bg-main :foreground ,fg-main))))
   `(cursor ((,class (:background ,primary))))
   `(fringe ((,class (:background
                      ,(if ibm-dark-theme-visible-fringes bg-inactive bg-main)
                      :foreground ,fg-main))))
   `(vertical-border ((,class (:foreground ,fg-window-divider-inner))))
   ;;;; basic and/or ungrouped styles
   `(error ((,class (:foreground ,danger :weight bold))))
   `(escape-glyph ((,class (:foreground ,fg-escape-char-construct))))
   `(header-line ((,class (:background ,bg-header :foreground ,fg-header))))
   `(homoglyph ((,class (:foreground ,fg-escape-char-construct))))
   `(ibuffer-locked-buffer ((,class (:foreground ,warning-alt-other))))
   `(italic ((,class (:foreground ,fg-special-cold :slant italic))))
   `(nobreak-hyphen ((,class (:foreground ,fg-escape-char-construct))))
   `(nobreak-space ((,class (:foreground ,fg-escape-char-construct :underline t))))
   `(minibuffer-prompt ((,class (:foreground ,info-intense))))
   `(mm-command-output ((,class (:foreground ,danger-alt-other))))
   `(mm-uu-extract ((,class (:background ,bg-dim :foreground ,fg-special-mild))))
   `(next-error ((,class (:inherit ibm-theme-subtle-danger))))
   `(shadow ((,class (:foreground ,fg-alt))))
   `(success ((,class (:foreground ,success :weight bold))))
   `(trailing-whitespace ((,class (:background ,danger-intense-bg))))
   `(warning ((,class (:foreground ,warning :weight bold))))
   ;;;; ag
   `(ag-hit-face ((,class (:foreground ,fg-special-cold))))
   `(ag-match-face ((,class (:inherit ibm-theme-special-calm))))
   ;;;; alert
   `(alert-high-face ((,class (:foreground ,danger-alt :weight bold))))
   `(alert-low-face ((,class (:foreground ,fg-special-mild))))
   `(alert-moderate-face ((,class (:foreground ,warning :weight bold))))
   `(alert-trivial-face ((,class (:foreground ,fg-special-calm))))
   `(alert-urgent-face ((,class (:foreground ,danger-intense :weight bold))))
   ;;;; all-the-icons
   `(all-the-icons-primary ((,class (:foreground ,primary))))
   `(all-the-icons-primary-alt ((,class (:foreground ,primary-alt))))
   `(all-the-icons-info ((,class (:foreground ,info))))
   `(all-the-icons-info-alt ((,class (:foreground ,info-alt))))
   `(all-the-icons-dblue ((,class (:foreground ,primary-alt-other))))
   `(all-the-icons-dcyan ((,class (:foreground ,info-alt-other))))
   `(all-the-icons-dgreen ((,class (:foreground ,success-alt-other))))
   `(all-the-icons-dired-dir-face ((,class (:foreground ,primary))))
   `(all-the-icons-dmaroon ((,class (:foreground ,secondary-alt-other))))
   `(all-the-icons-dorange ((,class (:foreground ,danger-alt-other))))
   `(all-the-icons-dpink ((,class (:foreground ,secondary))))
   `(all-the-icons-dpurple ((,class (:foreground ,secondary-alt))))
   `(all-the-icons-dred ((,class (:foreground ,danger))))
   `(all-the-icons-dsilver ((,class (:foreground ,fg-special-cold))))
   `(all-the-icons-dyellow ((,class (:foreground ,warning))))
   `(all-the-icons-success ((,class (:foreground ,success))))
   `(all-the-icons-lblue ((,class (:foreground ,primary-refine-fg))))
   `(all-the-icons-lcyan ((,class (:foreground ,info-refine-fg))))
   `(all-the-icons-lgreen ((,class (:foreground ,success-refine-fg))))
   `(all-the-icons-lmaroon ((,class (:foreground ,secondary-refine-fg))))
   `(all-the-icons-lorange ((,class (:foreground ,danger-refine-fg))))
   `(all-the-icons-lpink ((,class (:foreground ,secondary-refine-fg))))
   `(all-the-icons-lpurple ((,class (:foreground ,secondary-refine-fg))))
   `(all-the-icons-lred ((,class (:foreground ,danger-refine-fg))))
   `(all-the-icons-lsilver ((,class (:foreground ,fg-special-cold))))
   `(all-the-icons-lyellow ((,class (:foreground ,warning-refine-fg))))
   `(all-the-icons-maroon ((,class (:foreground ,secondary))))
   `(all-the-icons-orange ((,class (:foreground ,danger-alt))))
   `(all-the-icons-pink ((,class (:foreground ,secondary))))
   `(all-the-icons-purple ((,class (:foreground ,secondary-alt))))
   `(all-the-icons-purple-alt ((,class (:foreground ,secondary-alt-other))))
   `(all-the-icons-danger ((,class (:foreground ,danger))))
   `(all-the-icons-danger-alt ((,class (:foreground ,danger-alt))))
   `(all-the-icons-silver ((,class (:foreground ,fg-special-cold))))
   `(all-the-icons-warning ((,class (:foreground ,warning))))
   ;;;; annotate
   `(annotate-annotation ((,class (:inherit ibm-theme-intense-primary))))
   `(annotate-annotation-secondary ((,class (:inherit ibm-theme-intense-warning))))
   `(annotate-highlight ((,class (:underline (:color ,primary-intense :style line)))))
   `(annotate-highlight-secondary ((,class (:underline (:color ,warning-intense :style line)))))
   ;;;; anzu
   `(anzu-match-1 ((,class (:inherit ibm-theme-subtle-info))))
   `(anzu-match-2 ((,class (:inherit ibm-theme-subtle-success))))
   `(anzu-match-3 ((,class (:inherit ibm-theme-subtle-warning))))
   `(anzu-mode-line ((,class (:foreground ,success-active :weight bold))))
   `(anzu-mode-line-no-match ((,class (:foreground ,danger-active :weight bold))))
   `(anzu-replace-highlight ((,class (:inherit ibm-theme-refine-warning :underline t))))
   `(anzu-replace-to ((,class (:inherit ibm-theme-intense-success :weight bold))))
   ;;;; apropos
   `(apropos-function-button ((,class (:foreground ,secondary-alt-other :underline t))))
   `(apropos-keybinding ((,class (:foreground ,info :weight bold))))
   `(apropos-misc-button ((,class (:foreground ,info-alt-other :underline t))))
   `(apropos-property ((,class (:foreground ,secondary-alt :weight ,ibm-theme-bold))))
   `(apropos-symbol ((,class (:foreground ,primary-nuanced :weight ,ibm-theme-bold :underline t))))
   `(apropos-user-option-button ((,class (:foreground ,success-alt-other :underline t))))
   `(apropos-variable-button ((,class (:foreground ,primary :underline t))))
   ;;;; apt-sources-list
   `(apt-sources-list-components ((,class (:foreground ,info))))
   `(apt-sources-list-options ((,class (:foreground ,warning))))
   `(apt-sources-list-suite ((,class (:foreground ,success))))
   `(apt-sources-list-type ((,class (:foreground ,secondary))))
   `(apt-sources-list-uri ((,class (:foreground ,primary))))
   ;;;; artbollocks-mode
   `(artbollocks-face ((,class (:foreground ,info-nuanced :underline (:color ,fg-lang-note :style line)))))
   `(artbollocks-lexical-illusions-face ((,class (:background ,bg-alt :foreground ,danger-alt :underline t))))
   `(artbollocks-passive-voice-face ((,class (:foreground ,warning-nuanced :underline (:color ,fg-lang-warning :style line)))))
   `(artbollocks-weasel-words-face ((,class (:foreground ,danger-nuanced :underline (:color ,fg-lang-error :style line)))))
   ;;;; auctex and Tex
   `(font-latex-bold-face ((,class (:foreground ,fg-special-calm :weight bold))))
   `(font-latex-doctex-documentation-face ((,class (:foreground ,fg-special-cold :slant ,ibm-theme-slant))))
   `(font-latex-doctex-preprocessor-face ((,class (:foreground ,secondary-alt :weight ,ibm-theme-bold))))
   `(font-latex-italic-face ((,class (:foreground ,fg-special-calm :slant italic))))
   `(font-latex-math-face ((,class (:foreground ,info-alt-other))))
   `(font-latex-script-char-face ((,class (:foreground ,info-alt-other))))
   `(font-latex-sectioning-0-face ((,class (:inherit ,ibm-theme-variable-pitch
                                                     :foreground ,primary-nuanced :weight bold
                                                     ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)))))
   `(font-latex-sectioning-1-face ((,class (:inherit ,ibm-theme-variable-pitch
                                                     :foreground ,primary-nuanced :weight bold
                                                     ,@(ibm-dark-theme-scale ibm-dark-theme-scale-3)))))
   `(font-latex-sectioning-2-face ((,class (:inherit ,ibm-theme-variable-pitch
                                                     :foreground ,primary-nuanced :weight bold
                                                     ,@(ibm-dark-theme-scale ibm-dark-theme-scale-2)))))
   `(font-latex-sectioning-3-face ((,class (:inherit ,ibm-theme-variable-pitch
                                                     :foreground ,primary-nuanced :weight bold
                                                     ,@(ibm-dark-theme-scale ibm-dark-theme-scale-1)))))
   `(font-latex-sectioning-4-face ((,class (:inherit ,ibm-theme-variable-pitch
                                                     :foreground ,primary-nuanced :weight bold))))
   `(font-latex-sectioning-5-face ((,class (:inherit ,ibm-theme-variable-pitch
                                                     :foreground ,primary-nuanced))))
   `(font-latex-sedate-face ((,class (:foreground ,secondary-alt-other :weight ,ibm-theme-bold))))
   `(font-latex-slide-title-face ((,class (:inherit ,ibm-theme-variable-pitch
                                                    :foreground ,info-nuanced :weight bold
                                                    ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)))))
   `(font-latex-string-face ((,class (:foreground ,primary-alt))))
   `(font-latex-subscript-face ((,class (:height 0.95))))
   `(font-latex-superscript-face ((,class (:height 0.95))))
   `(font-latex-verbatim-face ((,class (:background ,bg-dim :foreground ,fg-special-mild))))
   `(font-latex-warning-face ((,class (:foreground ,warning-alt-other))))
   `(tex-match ((,class (:foreground ,primary-alt-other))))
   `(tex-verbatim ((,class (:background ,bg-dim :foreground ,fg-special-mild))))
   `(texinfo-heading ((,class (:foreground ,secondary))))
   `(TeX-error-description-error ((,class (:foreground ,danger :weight bold))))
   `(TeX-error-description-help ((,class (:foreground ,primary))))
   `(TeX-error-description-tex-said ((,class (:foreground ,primary))))
   `(TeX-error-description-warning ((,class (:foreground ,warning :weight bold))))
   ;;;; auto-dim-other-buffers
   `(auto-dim-other-buffers-face ((,class (:background ,bg-alt))))
   ;;;; avy
   `(avy-background-face ((,class (:background ,bg-dim :foreground ,fg-dim))))
   `(avy-goto-char-timer-face ((,class (:inherit ibm-theme-intense-warning :weight bold))))
   `(avy-lead-face ((,class (:inherit ibm-theme-intense-secondary :weight bold))))
   `(avy-lead-face-0 ((,class (:inherit ibm-theme-intense-primary :weight bold))))
   `(avy-lead-face-1 ((,class (:inherit ibm-theme-intense-danger :weight bold))))
   `(avy-lead-face-2 ((,class (:inherit ibm-theme-intense-success :weight bold))))
   ;;;; aw (ace-window)
   `(aw-background-face ((,class (:background ,bg-dim :foreground ,fg-dim))))
   `(aw-key-face ((,class (:foreground ,primary-intense :weight bold))))
   `(aw-leading-char-face ((,class (:height 1.5 :background ,bg-main :foreground ,danger-intense :weight bold))))
   `(aw-minibuffer-leading-char-face ((,class (:foreground ,secondary-active))))
   `(aw-mode-line-face ((,class (:weight bold))))
   ;;;; bm
   `(bm-face ((,class (:inherit ibm-theme-subtle-warning
                                ,@(and (>= emacs-major-version 27) '(:extend t))))))
   `(bm-fringe-face ((,class (:inherit ibm-theme-fringe-warning))))
   `(bm-fringe-persistent-face ((,class (:inherit ibm-theme-fringe-primary))))
   `(bm-persistent-face ((,class (:inherit ibm-theme-intense-primary
                                           ,@(and (>= emacs-major-version 27) '(:extend t))))))
   ;;;; buttons, links, widgets
   `(button ((,class (:foreground ,primary-alt-other :underline t))))
   `(link ((,class (:foreground ,primary-alt-other :underline t))))
   `(link-visited ((,class (:foreground ,secondary-alt-other :underline t))))
   `(tooltip ((,class (:background ,bg-special-cold :foreground ,fg-main))))
   `(widget-button ((,class (:inherit button))))
   `(widget-button-pressed ((,class (:inherit button :foreground ,secondary))))
   `(widget-documentation ((,class (:foreground ,success))))
   `(widget-field ((,class (:background ,bg-dim :foreground ,fg-dim))))
   `(widget-inactive ((,class (:background ,bg-inactive :foreground ,fg-inactive))))
   `(widget-single-line-field ((,class (:inherit widget-field))))
   ;;;; breakpoint (built-in gdb-mi.el)
   `(breakpoint-disabled ((,class (:foreground ,fg-alt))))
   `(breakpoint-enabled ((,class (:foreground ,danger :weight bold))))
   ;;;; buffer-expose
   `(buffer-expose-ace-char-face ((,class (:foreground ,danger-active :weight bold))))
   `(buffer-expose-mode-line-face ((,class (:foreground ,info-active))))
   `(buffer-expose-selected-face ((,class (:inherit ibm-theme-special-mild))))
   ;;;; calendar and diary
   `(calendar-month-header ((,class (:foreground ,fg-main :weight bold))))
   `(calendar-today ((,class (:background ,bg-alt :underline t))))
   `(calendar-weekday-header ((,class (:foreground ,primary-alt))))
   `(calendar-weekend-header ((,class (:foreground ,fg-alt))))
   `(diary ((,class (:foreground ,success-alt-other))))
   `(diary-anniversary ((,class (:foreground ,warning-alt-other))))
   `(diary-time ((,class (:foreground ,danger-alt))))
   `(holiday ((,class (:foreground ,secondary-alt))))
   ;;;; calfw
   `(cfw:face-annotation ((,class (:background ,bg-alt :foreground ,fg-alt))))
   `(cfw:face-day-title ((,class (:background ,bg-alt :foreground ,fg-main))))
   `(cfw:face-default-content ((,class (:foreground ,success-alt))))
   `(cfw:face-default-day ((,class (:inherit cfw:face-day-title :weight bold))))
   `(cfw:face-disable ((,class (:background ,bg-inactive :foreground ,fg-inactive))))
   `(cfw:face-grid ((,class (:foreground ,fg-inactive))))
   `(cfw:face-header ((,class (::foreground ,fg-main :weight bold))))
   `(cfw:face-holiday ((,class (:background ,bg-alt :foreground ,secondary :weight bold))))
   `(cfw:face-periods ((,class (:foreground ,info-alt-other))))
   `(cfw:face-saturday ((,class (:background ,bg-alt :foreground ,secondary-alt :weight bold))))
   `(cfw:face-select ((,class (:inherit ibm-theme-intense-primary))))
   `(cfw:face-sunday ((,class (:background ,bg-alt :foreground ,secondary-alt-other :weight bold))))
   `(cfw:face-title ((,class (:inherit ,ibm-theme-variable-pitch
                                       :foreground ,fg-special-warm :weight bold
                                       ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)))))
   `(cfw:face-today ((,class (:foreground ,primary :weight bold))))
   `(cfw:face-today-title ((,class (:inherit ibm-theme-special-mild :box t))))
   `(cfw:face-toolbar ((,class (:background ,bg-active :foreground ,bg-active))))
   `(cfw:face-toolbar-button-off ((,class (:background ,bg-alt :foreground ,info))))
   `(cfw:face-toolbar-button-on ((,class (:background ,bg-main :foreground ,primary-intense :weight bold))))
   ;;;; centaur-tabs
   `(centaur-tabs-active-bar-face ((,class (:background ,fg-tab-active))))
   `(centaur-tabs-close-mouse-face ((,class (:foreground ,danger-active :weight bold :underline t))))
   `(centaur-tabs-close-selected ((,class (:inherit centaur-tabs-selected))))
   `(centaur-tabs-close-unselected ((,class (:inherit centaur-tabs-unselected))))
   `(centaur-tabs-modified-marker-selected ((,class (:inherit centaur-tabs-selected))))
   `(centaur-tabs-modified-marker-unselected ((,class (:inherit centaur-tabs-unselected))))
   `(centaur-tabs-default ((,class (:background ,bg-main :foreground ,bg-main))))
   `(centaur-tabs-selected ((,class (:background ,bg-tab-active :foreground ,fg-main :weight bold))))
   `(centaur-tabs-selected-modified ((,class (:background ,bg-tab-active :foreground ,fg-main :slant italic))))
   `(centaur-tabs-unselected ((,class (:background ,bg-tab-inactive :foreground ,fg-dim))))
   `(centaur-tabs-unselected-modified ((,class (:background ,bg-tab-inactive :foreground ,fg-dim :slant italic))))
   ;;;; change-log and log-view (`vc-print-log' and `vc-print-root-log')
   `(change-log-acknowledgment ((,class (:foreground ,fg-special-warm))))
   `(change-log-conditionals ((,class (:foreground ,secondary-alt))))
   `(change-log-date ((,class (:foreground ,secondary))))
   `(change-log-email ((,class (:foreground ,info))))
   `(change-log-file ((,class (:foreground ,primary))))
   `(change-log-list ((,class (:foreground ,secondary-alt-other))))
   `(change-log-name ((,class (:foreground ,info))))
   `(log-edit-header ((,class (:foreground ,primary-alt :weight bold))))
   `(log-edit-summary ((,class (:foreground ,secondary-alt-other))))
   `(log-edit-unknown-header ((,class (:foreground ,fg-alt))))
   `(log-view-file ((,class (:foreground ,fg-special-cold :weight bold))))
   `(log-view-message ((,class (:foreground ,fg-special-warm))))
   ;;;; cider
   `(cider-debug-code-overlay-face ((,class (:background ,bg-alt))))
   `(cider-debug-prompt-face ((,class (:foreground ,secondary-alt :underline t))))
   `(cider-deprecated-face ((,class (:inherit ibm-theme-refine-warning))))
   `(cider-docview-emphasis-face ((,class (:foreground ,fg-special-cold :slant italic))))
   `(cider-docview-literal-face ((,class (:foreground ,primary-alt))))
   `(cider-docview-strong-face ((,class (:foreground ,fg-special-cold :weight bold))))
   `(cider-docview-table-border-face ((,class (:foreground ,fg-alt))))
   `(cider-enlightened-face ((,class (:box (:line-width -1 :color ,warning-alt :style nil) :background ,bg-dim))))
   `(cider-enlightened-local-face ((,class (:foreground ,warning-alt-other :weight bold))))
   `(cider-error-highlight-face ((,class (:foreground ,danger :underline t))))
   `(cider-fragile-button-face ((,class (:box (:line-width 3 :color ,fg-alt :style released-button)) :foreground ,warning)))
   `(cider-fringe-good-face ((,class (:foreground ,success-active))))
   `(cider-instrumented-face ((,class (:box (:line-width -1 :color ,danger :style nil) :background ,bg-dim))))
   `(cider-reader-conditional-face ((,class (:foreground ,fg-special-warm :slant italic))))
   `(cider-repl-input-face ((,class (:weight bold))))
   `(cider-repl-prompt-face ((,class (:foreground ,info-alt-other))))
   `(cider-repl-stderr-face ((,class (:foreground ,danger :weight bold))))
   `(cider-repl-stdout-face ((,class (:foreground ,primary))))
   `(cider-result-overlay-face ((,class (:box (:line-width -1 :color ,primary :style nil) :background ,bg-dim))))
   `(cider-stacktrace-error-class-face ((,class (:foreground ,danger :weight bold))))
   `(cider-stacktrace-error-message-face ((,class (:foreground ,danger-alt-other :slant italic))))
   `(cider-stacktrace-face ((,class (:foreground ,fg-main))))
   `(cider-stacktrace-filter-active-face ((,class (:foreground ,info-alt :underline t))))
   `(cider-stacktrace-filter-inactive-face ((,class (:foreground ,info-alt))))
   `(cider-stacktrace-fn-face ((,class (:foreground ,fg-main :weight bold))))
   `(cider-stacktrace-ns-face ((,class (:foreground ,fg-alt :slant italic))))
   `(cider-stacktrace-promoted-button-face ((,class (:box (:line-width 3 :color ,fg-alt :style released-button)) :foreground ,danger)))
   `(cider-stacktrace-suppressed-button-face ((,class (:box (:line-width 3 :color ,fg-alt :style pressed-button))
                                                      :background ,bg-alt :foreground ,fg-alt)))
   `(cider-test-error-face ((,class (:inherit ibm-theme-subtle-danger))))
   `(cider-test-failure-face ((,class (:inherit ibm-theme-intense-danger :weight bold))))
   `(cider-test-success-face ((,class (:inherit ibm-theme-intense-success))))
   `(cider-traced-face ((,class (:box (:line-width -1 :color ,info :style nil) :background ,bg-dim))))
   `(cider-warning-highlight-face ((,class (:foreground ,warning :underline t))))
   ;;;; circe (and lui)
   `(circe-fool-face ((,class (:foreground ,fg-alt))))
   `(circe-highlight-nick-face ((,class (:foreground ,primary :weight bold))))
   `(circe-prompt-face ((,class (:foreground ,info-alt-other :weight bold))))
   `(circe-server-face ((,class (:foreground ,fg-unfocused))))
   `(lui-button-face ((,class (:foreground ,primary :underline t))))
   `(lui-highlight-face ((,class (:foreground ,secondary-alt))))
   `(lui-time-stamp-face ((,class (:foreground ,primary-nuanced))))
   ;;;; color-rg
   `(color-rg-font-lock-column-number ((,class (:foreground ,secondary-alt-other))))
   `(color-rg-font-lock-command ((,class (:foreground ,fg-main :weight bold))))
   `(color-rg-font-lock-file ((,class (:foreground ,fg-special-cold :weight bold))))
   `(color-rg-font-lock-flash ((,class (:inherit ibm-theme-intense-primary))))
   `(color-rg-font-lock-function-location ((,class (:inherit ibm-theme-special-calm))))
   `(color-rg-font-lock-header-line-directory ((,class (:foreground ,primary-active))))
   `(color-rg-font-lock-header-line-edit-mode ((,class (:foreground ,secondary-active))))
   `(color-rg-font-lock-header-line-keyword ((,class (:foreground ,success-active))))
   `(color-rg-font-lock-header-line-text ((,class (:foreground ,fg-active))))
   `(color-rg-font-lock-line-number ((,class (:foreground ,fg-special-warm))))
   `(color-rg-font-lock-mark-changed ((,class (:foreground ,primary :weight bold))))
   `(color-rg-font-lock-mark-deleted ((,class (:foreground ,danger :weight bold))))
   `(color-rg-font-lock-match ((,class (:inherit ibm-theme-special-calm))))
   `(color-rg-font-lock-position-splitter ((,class (:foreground ,fg-alt))))
   ;;;; column-enforce-mode
   `(column-enforce-face ((,class (:inherit ibm-theme-refine-warning))))
   ;;;; company-mode
   `(company-echo-common ((,class (:foreground ,secondary-alt-other))))
   `(company-preview ((,class (:background ,bg-special-cold :foreground ,fg-special-cold))))
   `(company-preview-common ((,class (:foreground ,primary-alt))))
   `(company-preview-search ((,class (:inherit ibm-theme-special-calm))))
   `(company-scrollbar-bg ((,class (:background ,bg-active))))
   `(company-scrollbar-fg ((,class (:background ,fg-active))))
   `(company-template-field ((,class (:inherit ibm-theme-intense-secondary))))
   `(company-tooltip ((,class (:background ,bg-special-cold :foreground ,fg-special-cold))))
   `(company-tooltip-annotation ((,class (:foreground ,fg-special-cold :slant ,ibm-theme-slant))))
   `(company-tooltip-annotation-selection ((,class (:foreground ,fg-main :weight bold))))
   `(company-tooltip-common ((,class (:foreground ,primary-alt :weight bold))))
   `(company-tooltip-common-selection ((,class (:foreground ,fg-main))))
   `(company-tooltip-mouse ((,class (:inherit ibm-theme-intense-primary))))
   `(company-tooltip-search ((,class (:inherit ibm-theme-refine-info :weight bold))))
   `(company-tooltip-search-selection ((,class (:inherit ibm-theme-intense-success :weight bold :underline t))))
   `(company-tooltip-selection ((,class (:inherit ibm-theme-subtle-info :weight bold))))
   ;;;; company-posframe
   `(company-posframe-active-backend-name ((,class (:background ,bg-active :foreground ,primary-active :weight bold))))
   `(company-posframe-inactive-backend-name ((,class (:background ,bg-active :foreground ,fg-active))))
   `(company-posframe-metadata ((,class (:background ,bg-inactive :foreground ,fg-inactive))))
   ;;;; compilation feedback
   `(compilation-column-number ((,class (:foreground ,secondary-alt-other))))
   `(compilation-error ((,class (:foreground ,danger :weight ,ibm-theme-bold))))
   `(compilation-info ((,class (:foreground ,fg-special-cold))))
   `(compilation-line-number ((,class (:foreground ,fg-special-warm))))
   `(compilation-mode-line-exit ((,class (:foreground ,primary-active :weight ,ibm-theme-bold))))
   `(compilation-mode-line-fail ((,class (:foreground ,danger-active :weight ,ibm-theme-bold))))
   `(compilation-mode-line-run ((,class (:foreground ,secondary-active :weight ,ibm-theme-bold))))
   `(compilation-warning ((,class (:foreground ,warning :weight ,ibm-theme-bold))))
   ;;;; completions
   `(completions-annotations ((,class (:foreground ,fg-special-cold :slant ,ibm-theme-slant))))
   `(completions-common-part ((,class (:foreground ,info-alt-other))))
   `(completions-first-difference ((,class (:foreground ,primary-alt-other :weight bold))))
   ;;;; counsel
   `(counsel-active-mode ((,class (:foreground ,secondary-alt-other))))
   `(counsel-application-name ((,class (:foreground ,danger-alt-other))))
   `(counsel-key-binding ((,class (:foreground ,primary-alt-other :weight bold))))
   `(counsel-outline-1 ((,class (:inherit outline-1))))
   `(counsel-outline-2 ((,class (:inherit outline-2))))
   `(counsel-outline-3 ((,class (:inherit outline-3))))
   `(counsel-outline-4 ((,class (:inherit outline-4))))
   `(counsel-outline-5 ((,class (:inherit outline-5))))
   `(counsel-outline-6 ((,class (:inherit outline-6))))
   `(counsel-outline-7 ((,class (:inherit outline-7))))
   `(counsel-outline-8 ((,class (:inherit outline-8))))
   `(counsel-outline-default ((,class (:foreground ,success-alt-other :weight bold))))
   `(counsel-variable-documentation ((,class (:foreground ,warning-alt-other :slant ,ibm-theme-slant))))
   ;;;; counsel-css
   `(counsel-css-selector-depth-face-1 ((,class (:foreground ,primary))))
   `(counsel-css-selector-depth-face-2 ((,class (:foreground ,info))))
   `(counsel-css-selector-depth-face-3 ((,class (:foreground ,success))))
   `(counsel-css-selector-depth-face-4 ((,class (:foreground ,warning))))
   `(counsel-css-selector-depth-face-5 ((,class (:foreground ,secondary))))
   `(counsel-css-selector-depth-face-6 ((,class (:foreground ,danger))))
   ;;;; counsel-notmuch
   `(counsel-notmuch-count-face ((,class (:foreground ,info))))
   `(counsel-notmuch-date-face ((,class (:foreground ,primary))))
   `(counsel-notmuch-people-face ((,class (:foreground ,secondary))))
   `(counsel-notmuch-subject-face ((,class (:foreground ,secondary-alt-other))))
   ;;;; counsel-org-capture-string
   `(counsel-org-capture-string-template-body-face ((,class (:foreground ,fg-special-cold))))
   ;;;; cov
   `(cov-coverage-not-run-face ((,class (:foreground ,danger-intense))))
   `(cov-coverage-run-face ((,class (:foreground ,success-intense))))
   `(cov-heavy-face ((,class (:foreground ,secondary-intense))))
   `(cov-light-face ((,class (:foreground ,primary-intense))))
   `(cov-med-face ((,class (:foreground ,warning-intense))))
   `(cov-none-face ((,class (:foreground ,info-intense))))
   ;;;; csv-mode
   `(csv-separator-face ((,class (:background ,bg-special-cold :foreground ,fg-main))))
   ;;;; ctrlf
   `(ctrlf-highlight-active ((,class (:inherit ibm-theme-intense-success :weight bold))))
   `(ctrlf-highlight-line ((,class (:background ,bg-hl-line))))
   `(ctrlf-highlight-passive ((,class (:inherit ibm-theme-refine-info))))
   ;;;; custom (M-x customize)
   `(custom-button ((,class (:box (:line-width 2 :color nil :style released-button)
                                  :background ,bg-active :foreground ,fg-main))))
   `(custom-button-mouse ((,class (:box (:line-width 2 :color nil :style released-button)
                                        :background ,bg-active :foreground ,fg-active))))
   `(custom-button-pressed ((,class (:box (:line-width 2 :color nil :style pressed-button)
                                          :background ,bg-active :foreground ,fg-main))))
   `(custom-changed ((,class (:inherit ibm-theme-subtle-info))))
   `(custom-comment ((,class (:foreground ,fg-alt))))
   `(custom-comment-tag ((,class (:background ,bg-alt :foreground ,warning-alt-other))))
   `(custom-face-tag ((,class (:foreground ,primary-intense :weight bold))))
   `(custom-group-tag ((,class (:foreground ,success-intense :weight bold))))
   `(custom-group-tag-1 ((,class (:inherit ibm-theme-special-warm))))
   `(custom-invalid ((,class (:inherit ibm-theme-intense-danger :weight bold))))
   `(custom-modified ((,class (:inherit ibm-theme-subtle-info))))
   `(custom-rogue ((,class (:inherit ibm-theme-refine-secondary))))
   `(custom-set ((,class (:foreground ,primary-alt))))
   `(custom-state ((,class (:foreground ,info-alt-other))))
   `(custom-themed ((,class (:inherit ibm-theme-subtle-primary))))
   `(custom-variable-tag ((,class (:foreground ,info :weight bold))))
   ;;;; dap-mode
   `(dap-mouse-eval-thing-face ((,class (:box (:line-width -1 :color ,primary-active :style nil)
                                              :background ,bg-active :foreground ,fg-main))))
   `(dap-result-overlay-face ((,class (:box (:line-width -1 :color ,bg-active :style nil)
                                            :background ,bg-active :foreground ,fg-main))))
   `(dap-ui-breakpoint-verified-fringe ((,class (:foreground ,success-active :weight bold))))
   `(dap-ui-compile-errline ((,class (:foreground ,danger-intense :weight bold))))
   `(dap-ui-locals-scope-face ((,class (:foreground ,secondary :weight bold :underline t))))
   `(dap-ui-locals-variable-face ((,class (:foreground ,info :weight bold))))
   `(dap-ui-locals-variable-leaf-face ((,class (:foreground ,info-alt-other :slant italic))))
   `(dap-ui-marker-face ((,class (:inherit ibm-theme-subtle-primary))))
   `(dap-ui-sessions-stack-frame-face ((,class (:foreground ,secondary-alt :weight bold))))
   `(dap-ui-sessions-terminated-active-face ((,class (:foreground ,fg-alt :weight bold))))
   `(dap-ui-sessions-terminated-face ((,class (:foreground ,fg-alt))))
   ;;;; dashboard (emacs-dashboard)
   `(dashboard-banner-logo-title ((,class (:foreground ,fg-special-cold :weight bold))))
   `(dashboard-footer ((,class (:foreground ,fg-special-mild :weight bold))))
   `(dashboard-heading ((,class (:foreground ,fg-special-warm :weight bold))))
   `(dashboard-navigator ((,class (:foreground ,info-alt-other))))
   `(dashboard-text-banner ((,class (:foreground ,fg-dim))))
   ;;;; deadgrep
   `(deadgrep-filename-face ((,class (:foreground ,fg-special-cold :weight bold))))
   `(deadgrep-match-face ((,class (:inherit ibm-theme-special-calm))))
   `(deadgrep-meta-face ((,class (:foreground ,fg-alt))))
   `(deadgrep-regexp-metachar-face ((,class (:foreground ,warning-intense :weight bold))))
   `(deadgrep-search-term-face ((,class (:foreground ,success-intense :weight bold))))
   ;;;; debbugs
   `(debbugs-gnu-archived ((,class (:inverse-video t))))
   `(debbugs-gnu-done ((,class (:foreground ,fg-alt))))
   `(debbugs-gnu-forwarded ((,class (:foreground ,fg-special-warm))))
   `(debbugs-gnu-handled ((,class (:foreground ,success))))
   `(debbugs-gnu-new ((,class (:foreground ,danger))))
   `(debbugs-gnu-pending ((,class (:foreground ,info))))
   `(debbugs-gnu-stale-1 ((,class (:foreground ,warning-nuanced))))
   `(debbugs-gnu-stale-2 ((,class (:foreground ,warning))))
   `(debbugs-gnu-stale-3 ((,class (:foreground ,warning-alt))))
   `(debbugs-gnu-stale-4 ((,class (:foreground ,warning-alt-other))))
   `(debbugs-gnu-stale-5 ((,class (:foreground ,danger-alt))))
   `(debbugs-gnu-tagged ((,class (:foreground ,secondary-alt))))
   ;;;; define-word
   `(define-word-face-1 ((,class (:foreground ,warning))))
   `(define-word-face-2 ((,class (:foreground ,fg-main))))
   ;;;; deft
   `(deft-filter-string-error-face ((,class (:inherit ibm-theme-refine-danger))))
   `(deft-filter-string-face ((,class (:foreground ,success-intense))))
   `(deft-header-face ((,class (:foreground ,fg-special-warm :weight bold))))
   `(deft-separator-face ((,class (:foreground ,fg-alt))))
   `(deft-summary-face ((,class (:foreground ,fg-alt :slant ,ibm-theme-slant))))
   `(deft-time-face ((,class (:foreground ,fg-special-cold))))
   `(deft-title-face ((,class (:foreground ,fg-main :weight bold))))
   ;;;; diff-hl
   `(diff-hl-change ((,class (:inherit ibm-theme-fringe-primary))))
   `(diff-hl-delete ((,class (:inherit ibm-theme-fringe-danger))))
   `(diff-hl-dired-change ((,class (:inherit diff-hl-change))))
   `(diff-hl-dired-delete ((,class (:inherit diff-hl-delete))))
   `(diff-hl-dired-ignored ((,class (:inherit dired-ignored))))
   `(diff-hl-dired-insert ((,class (:inherit diff-hl-insert))))
   `(diff-hl-dired-unknown ((,class (:inherit dired-ignored))))
   `(diff-hl-insert ((,class (:inherit ibm-theme-fringe-success))))
   `(diff-hl-reverted-hunk-highlight ((,class (:inherit ibm-theme-fringe-secondary :weight bold))))
   ;;;; diff-mode
   `(diff-added ((,class ,(ibm-dark-theme-diffs
                           bg-main success
                           bg-diff-focus-added fg-diff-focus-added))))
   `(diff-changed ((,class ,(ibm-dark-theme-diffs
                             bg-main warning
                             bg-diff-focus-changed fg-diff-focus-changed))))
   `(diff-context ((,class (:foreground ,fg-unfocused))))
   `(diff-file-header ((,class (:foreground ,primary :weight bold))))
   `(diff-function ((,class (:foreground ,fg-special-cold))))
   `(diff-header ((,class (:foreground ,primary-nuanced))))
   `(diff-hunk-header ((,class ,(ibm-dark-theme-diffs
                                 bg-alt primary-alt
                                 bg-diff-heading fg-diff-heading))))
   `(diff-index ((,class (:foreground ,primary-alt :weight bold))))
   `(diff-indicator-added ((,class (:inherit ibm-theme-diff-focus-added))))
   `(diff-indicator-changed ((,class (:inherit ibm-theme-diff-focus-changed))))
   `(diff-indicator-removed ((,class (:inherit ibm-theme-diff-focus-removed))))
   `(diff-nonexistent ((,class (:inherit ibm-theme-neutral :weight bold))))
   `(diff-refine-added ((,class ,(ibm-dark-theme-diffs
                                  bg-diff-added fg-diff-added
                                  bg-diff-refine-added fg-diff-refine-added))))
   `(diff-refine-changed ((,class ,(ibm-dark-theme-diffs
                                    bg-diff-changed fg-diff-changed
                                    bg-diff-refine-changed fg-diff-refine-changed))))
   `(diff-refine-removed ((,class ,(ibm-dark-theme-diffs
                                    bg-diff-removed fg-diff-removed
                                    bg-diff-refine-removed fg-diff-refine-removed))))
   `(diff-removed ((,class ,(ibm-dark-theme-diffs
                             bg-main danger
                             bg-diff-focus-removed fg-diff-focus-removed))))
   ;;;; dim-autoload
   `(dim-autoload-cookie-line ((,class (:foreground ,fg-alt :slant ,ibm-theme-slant))))
   ;;;; dired
   `(dired-directory ((,class (:foreground ,primary))))
   `(dired-flagged ((,class (:background ,bg-mark-del :foreground ,fg-mark-del :weight bold))))
   `(dired-header ((,class (:foreground ,fg-main :weight bold))))
   `(dired-ignored ((,class (:foreground ,fg-alt))))
   `(dired-mark ((,class (:foreground ,primary-alt :weight bold))))
   `(dired-marked ((,class (:background ,bg-mark :foreground ,fg-mark :weight bold))))
   `(dired-perm-write ((,class (:foreground ,fg-special-warm))))
   `(dired-symlink ((,class (:foreground ,primary-alt :underline t))))
   `(dired-warning ((,class (:foreground ,warning :weight bold))))
   ;;;; dired-async
   `(dired-async-failures ((,class (:foreground ,danger-active :weight ,ibm-theme-bold))))
   `(dired-async-message ((,class (:foreground ,success-active :weight ,ibm-theme-bold))))
   `(dired-async-mode-message ((,class (:foreground ,info-active :weight ,ibm-theme-bold))))
   ;;;; dired-git
   `(dired-git-branch-else ((,class (:foreground ,secondary-alt :weight bold))))
   `(dired-git-branch-master ((,class (:foreground ,secondary-alt-other :weight bold))))
   ;;;; dired-git-info
   `(dgi-commit-message-face ((,class (:foreground ,fg-special-mild))))
   ;;;; dired-narrow
   `(dired-narrow-blink ((,class (:inherit ibm-theme-subtle-info :weight bold))))
   ;;;; dired-subtree
   ;; remove background from dired-subtree, else it breaks
   ;; dired-{flagged,marked} and any other face that sets a background
   ;; such as hl-line
   `(dired-subtree-depth-1-face ((,class (:background nil))))
   `(dired-subtree-depth-2-face ((,class (:background nil))))
   `(dired-subtree-depth-3-face ((,class (:background nil))))
   `(dired-subtree-depth-4-face ((,class (:background nil))))
   `(dired-subtree-depth-5-face ((,class (:background nil))))
   `(dired-subtree-depth-6-face ((,class (:background nil))))
   ;;;; diredfl
   `(diredfl-autofile-name ((,class (:inherit ibm-theme-refine-warning))))
   `(diredfl-compressed-file-name ((,class (:foreground ,danger-alt :weight bold))))
   `(diredfl-compressed-file-suffix ((,class (:inherit diredfl-compressed-file-name))))
   `(diredfl-date-time ((,class (:foreground ,fg-special-cold))))
   `(diredfl-deletion ((,class (:inherit dired-flagged))))
   `(diredfl-deletion-file-name ((,class (:inherit dired-flagged))))
   `(diredfl-dir-heading ((,class (:inherit dired-header))))
   `(diredfl-dir-name ((,class (:inherit dired-directory))))
   `(diredfl-dir-priv ((,class (:foreground ,primary-alt))))
   `(diredfl-exec-priv ((,class (:foreground ,info))))
   `(diredfl-executable-tag ((,class (:foreground ,info-alt))))
   `(diredfl-file-name ((,class (:foreground ,fg-main))))
   `(diredfl-file-suffix ((,class (:foreground ,fg-special-warm))))
   `(diredfl-flag-mark ((,class (:inherit dired-marked))))
   `(diredfl-flag-mark-line ((,class (:inherit dired-marked))))
   `(diredfl-ignored-file-name ((,class (:foreground ,fg-inactive))))
   `(diredfl-link-priv ((,class (:foreground ,primary-alt))))
   `(diredfl-no-priv ((,class (:foreground ,fg-inactive))))
   `(diredfl-number ((,class (:foreground ,fg-alt))))
   `(diredfl-other-priv ((,class (:foreground ,warning))))
   `(diredfl-rare-priv ((,class (:foreground ,success))))
   `(diredfl-read-priv ((,class (:foreground ,secondary))))
   `(diredfl-symlink ((,class (:foreground ,primary-alt :underline t))))
   `(diredfl-tagged-autofile-name ((,class (:inherit ibm-theme-refine-secondary))))
   `(diredfl-write-priv ((,class (:foreground ,secondary-alt-other))))
   ;;;; disk-usage
   `(disk-usage-children ((,class (:foreground ,warning))))
   `(disk-usage-inaccessible ((,class (:foreground ,danger :weight bold))))
   `(disk-usage-percent ((,class (:foreground ,success))))
   `(disk-usage-size ((,class (:foreground ,info))))
   `(disk-usage-symlink ((,class (:foreground ,primary :underline t))))
   `(disk-usage-symlink-directory ((,class (:foreground ,primary-alt :weight bold))))
   ;;;; doom-modeline
   `(doom-modeline-bar ((,class (:inherit ibm-theme-active-primary))))
   `(doom-modeline-bar-inactive ((,class (:background ,fg-inactive :foreground ,bg-main))))
   `(doom-modeline-battery-charging ((,class (:foreground ,success-active))))
   `(doom-modeline-battery-critical ((,class (:foreground ,danger-active :weight bold))))
   `(doom-modeline-battery-error ((,class (:inherit ibm-theme-active-danger))))
   `(doom-modeline-battery-full ((,class (:foreground ,primary-active))))
   `(doom-modeline-battery-normal ((,class (:foreground ,fg-active))))
   `(doom-modeline-battery-warning ((,class (:foreground ,warning-active :weight bold))))
   `(doom-modeline-buffer-file ((,class (:foreground ,fg-active :weight bold))))
   `(doom-modeline-buffer-major-mode ((,class (:foreground ,info-active :weight bold))))
   `(doom-modeline-buffer-minor-mode ((,class (:foreground ,fg-inactive))))
   `(doom-modeline-buffer-modified ((,class (:foreground ,secondary-active :weight bold))))
   `(doom-modeline-buffer-path ((,class (:foreground ,fg-active :weight bold))))
   `(doom-modeline-debug ((,class (:foreground ,warning-active :weight bold))))
   `(doom-modeline-evil-emacs-state ((,class (:foreground ,secondary-active :weight bold))))
   `(doom-modeline-evil-insert-state ((,class (:foreground ,success-active :weight bold))))
   `(doom-modeline-evil-motion-state ((,class (:foreground ,fg-inactive :weight bold))))
   `(doom-modeline-evil-normal-state ((,class (:foreground ,fg-active :weight bold))))
   `(doom-modeline-evil-operator-state ((,class (:foreground ,primary-active :weight bold))))
   `(doom-modeline-evil-replace-state ((,class (:foreground ,danger-active :weight bold))))
   `(doom-modeline-evil-visual-state ((,class (:foreground ,info-active :weight bold))))
   `(doom-modeline-highlight ((,class (:foreground ,primary-active :weight bold))))
   `(doom-modeline-host ((,class (:slant italic))))
   `(doom-modeline-info ((,class (:foreground ,success-active))))
   `(doom-modeline-lsp-error ((,class (:foreground ,danger-active :weight bold))))
   `(doom-modeline-lsp-success ((,class (:foreground ,success-active :weight bold))))
   `(doom-modeline-lsp-warning ((,class (:foreground ,warning-active :weight bold))))
   `(doom-modeline-panel ((,class (:inherit ibm-theme-active-primary))))
   `(doom-modeline-persp-buffer-not-in-persp ((,class (:foreground ,warning-active :slant italic))))
   `(doom-modeline-persp-name ((,class (:foreground ,fg-active))))
   `(doom-modeline-project-dir ((,class (:foreground ,primary-active :weight bold))))
   `(doom-modeline-project-parent-dir ((,class (:foreground ,primary-active))))
   `(doom-modeline-project-root-dir ((,class (:foreground ,fg-active))))
   `(doom-modeline-unread-number ((,class (:foreground ,fg-active :slant italic))))
   `(doom-modeline-urgent ((,class (:foreground ,danger-active :weight bold))))
   `(doom-modeline-warning ((,class (:foreground ,warning-active :weight bold))))
   ;;;; dynamic-ruler
   `(dynamic-ruler-negative-face ((,class (:inherit ibm-theme-intense-neutral))))
   `(dynamic-ruler-positive-face ((,class (:inherit ibm-theme-intense-warning))))
   ;;;; easy-jekyll
   `(easy-jekyll-help-face ((,class (:background ,bg-dim :foreground ,info-alt-other))))
   ;;;; easy-kill
   `(easy-kill-origin ((,class (:inherit ibm-theme-subtle-danger))))
   `(easy-kill-selection ((,class (:inherit ibm-theme-subtle-warning))))
   ;;;; ebdb
   `(ebdb-address-default ((,class (:foreground ,fg-main))))
   `(ebdb-db-char ((,class (:foreground ,fg-special-cold))))
   `(ebdb-defunct ((,class (:foreground ,fg-alt))))
   `(ebdb-field-hidden ((,class (:foreground ,secondary))))
   `(ebdb-field-url ((,class (:foreground ,primary))))
   `(ebdb-label ((,class (:foreground ,info-alt-other))))
   `(ebdb-mail-default ((,class (:foreground ,fg-main))))
   `(ebdb-mail-primary ((,class (:foreground ,primary-alt))))
   `(ebdb-marked ((,class (:background ,info-intense-bg))))
   `(ebdb-organization-name ((,class (:foreground ,fg-special-calm))))
   `(ebdb-person-name ((,class (:foreground ,secondary-alt-other))))
   `(ebdb-phone-default ((,class (:foreground ,fg-special-warm))))
   `(ebdb-role-defunct ((,class (:foreground ,fg-alt))))
   `(eieio-custom-slot-tag-face ((,class (:foreground ,danger-alt))))
   ;;;; ediff
   `(ediff-current-diff-A ((,class ,(ibm-dark-theme-diffs
                                     bg-alt danger
                                     bg-diff-removed fg-diff-removed))))
   `(ediff-current-diff-Ancestor ((,class ,(ibm-dark-theme-diffs
                                            bg-alt fg-special-cold
                                            bg-special-cold fg-special-cold))))
   `(ediff-current-diff-B ((,class ,(ibm-dark-theme-diffs
                                     bg-alt success
                                     bg-diff-added fg-diff-added))))
   `(ediff-current-diff-C ((,class ,(ibm-dark-theme-diffs
                                     bg-alt warning
                                     bg-diff-changed fg-diff-changed))))
   `(ediff-even-diff-A ((,class (:background ,bg-diff-neutral-1 :foreground ,fg-diff-neutral-1))))
   `(ediff-even-diff-Ancestor ((,class (:background ,bg-diff-neutral-2 :foreground ,fg-diff-neutral-1))))
   `(ediff-even-diff-B ((,class (:background ,bg-diff-neutral-1 :foreground ,fg-diff-neutral-1))))
   `(ediff-even-diff-C ((,class (:background ,bg-diff-neutral-2 :foreground ,fg-diff-neutral-2))))
   `(ediff-fine-diff-A ((,class (:background ,bg-diff-focus-removed :foreground ,fg-diff-focus-removed))))
   `(ediff-fine-diff-Ancestor ((,class (:inherit ibm-theme-refine-info))))
   `(ediff-fine-diff-B ((,class (:background ,bg-diff-focus-added :foreground ,fg-diff-focus-added))))
   `(ediff-fine-diff-C ((,class (:background ,bg-diff-focus-changed :foreground ,fg-diff-focus-changed))))
   `(ediff-odd-diff-A ((,class (:background ,bg-diff-neutral-2 :foreground ,fg-diff-neutral-2))))
   `(ediff-odd-diff-Ancestor ((,class (:background ,bg-diff-neutral-0 :foreground ,fg-diff-neutral-0))))
   `(ediff-odd-diff-B ((,class (:background ,bg-diff-neutral-2 :foreground ,fg-diff-neutral-2))))
   `(ediff-odd-diff-C ((,class (:background ,bg-diff-neutral-1 :foreground ,fg-diff-neutral-1))))
   ;;;; eglot
   `(eglot-mode-line ((,class (:foreground ,secondary-active :weight ,ibm-theme-bold))))
   ;;;; eldoc-box
   `(eldoc-box-body ((,class (:background ,bg-alt :foreground ,fg-main))))
   `(eldoc-box-border ((,class (:background ,fg-alt))))
   ;;;; elfeed
   `(elfeed-log-date-face ((,class (:foreground ,info-alt))))
   `(elfeed-log-debug-level-face ((,class (:foreground ,secondary))))
   `(elfeed-log-error-level-face ((,class (:foreground ,danger))))
   `(elfeed-log-info-level-face ((,class (:foreground ,success))))
   `(elfeed-log-warn-level-face ((,class (:foreground ,warning))))
   `(elfeed-search-date-face ((,class (:foreground ,info))))
   `(elfeed-search-feed-face ((,class (:foreground ,primary))))
   `(elfeed-search-filter-face ((,class (:foreground ,secondary-active))))
   `(elfeed-search-last-update-face ((,class (:foreground ,success-active))))
   `(elfeed-search-tag-face ((,class (:foreground ,info-alt-other))))
   `(elfeed-search-title-face ((,class (:foreground ,fg-main))))
   `(elfeed-search-unread-count-face ((,class (:foreground ,primary-active))))
   `(elfeed-search-unread-title-face ((,class (:weight bold))))
   ;;;; elfeed-score
   `(elfeed-score-date-face ((,class (:foreground ,primary))))
   `(elfeed-score-debug-level-face ((,class (:foreground ,secondary-alt-other))))
   `(elfeed-score-error-level-face ((,class (:foreground ,danger))))
   `(elfeed-score-info-level-face ((,class (:foreground ,info))))
   `(elfeed-score-warn-level-face ((,class (:foreground ,warning))))
   ;;;; emms
   `(emms-playlist-track-face ((,class (:foreground ,primary))))
   `(emms-playlist-selected-face ((,class (:foreground ,secondary :weight bold))))
   ;;;; enhanced-ruby-mode
   `(enh-ruby-heredoc-delimiter-face ((,class (:foreground ,primary-alt-other))))
   `(enh-ruby-op-face ((,class (:foreground ,fg-main))))
   `(enh-ruby-regexp-delimiter-face ((,class (:foreground ,success))))
   `(enh-ruby-regexp-face ((,class (:foreground ,secondary))))
   `(enh-ruby-string-delimiter-face ((,class (:foreground ,primary-alt))))
   `(erm-syn-errline ((,class (:foreground ,danger :underline t))))
   `(erm-syn-warnline ((,class (:foreground ,warning :underline t))))
   ;;;; epa
   `(epa-field-body ((,class (:foreground ,fg-main))))
   `(epa-field-name ((,class (:foreground ,fg-dim :weight bold))))
   `(epa-mark ((,class (:foreground ,secondary :weight bold))))
   `(epa-string ((,class (:foreground ,primary-alt))))
   `(epa-validity-disabled ((,class (:inherit ibm-theme-refine-danger))))
   `(epa-validity-high ((,class (:foreground ,info :weight bold))))
   `(epa-validity-low ((,class (:foreground ,fg-alt))))
   `(epa-validity-medium ((,class (:foreground ,warning))))
   ;;;; equake
   `(equake-buffer-face ((,class (:background ,bg-main :foreground ,fg-main))))
   `(equake-shell-type-eshell ((,class (:background ,bg-inactive :foreground ,success-active))))
   `(equake-shell-type-rash ((,class (:background ,bg-inactive :foreground ,danger-active))))
   `(equake-shell-type-shell ((,class (:background ,bg-inactive :foreground ,info-active))))
   `(equake-shell-type-term ((,class (:background ,bg-inactive :foreground ,warning-active))))
   `(equake-shell-type-vterm ((,class (:background ,bg-inactive :foreground ,secondary-active))))
   `(equake-tab-active ((,class (:background ,fg-alt :foreground ,bg-alt))))
   `(equake-tab-inactive ((,class (:foreground ,fg-inactive))))
   ;;;; erc
   `(erc-action-face ((,class (:foreground ,info :weight bold))))
   `(erc-bold-face ((,class (:weight bold))))
   `(erc-button ((,class (:inherit button))))
   `(erc-command-indicator-face ((,class (:foreground ,info-alt :weight bold))))
   `(erc-current-nick-face ((,class (:foreground ,secondary-alt-other))))
   `(erc-dangerous-host-face ((,class (:inherit ibm-theme-intense-danger))))
   `(erc-direct-msg-face ((,class (:foreground ,secondary))))
   `(erc-error-face ((,class (:foreground ,danger :weight bold))))
   `(erc-fool-face ((,class (:foreground ,fg-inactive))))
   `(erc-header-line ((,class (:background ,bg-header :foreground ,fg-header))))
   `(erc-input-face ((,class (:foreground ,fg-special-calm))))
   `(erc-inverse-face ((,class (:inherit erc-default-face :inverse-video t))))
   `(erc-keyword-face ((,class (:foreground ,secondary-alt :weight bold))))
   `(erc-my-nick-face ((,class (:foreground ,secondary :weight bold))))
   `(erc-my-nick-prefix-face ((,class (:inherit erc-my-nick-face))))
   `(erc-nick-default-face ((,class (:foreground ,primary :weight bold))))
   `(erc-nick-msg-face ((,class (:foreground ,success :weight bold))))
   `(erc-nick-prefix-face ((,class (:inherit erc-nick-default-face))))
   `(erc-notice-face ((,class (:foreground ,fg-unfocused))))
   `(erc-pal-face ((,class (:foreground ,danger-alt :weight bold))))
   `(erc-prompt-face ((,class (:foreground ,info-alt-other :weight bold))))
   `(erc-timestamp-face ((,class (:foreground ,primary-nuanced))))
   `(erc-underline-face ((,class (:underline t))))
   ;;;; ert
   `(ert-test-result-expected ((,class (:inherit ibm-theme-intense-success))))
   `(ert-test-result-unexpected ((,class (:inherit ibm-theme-intense-danger))))
   ;;;; eshell
   `(eshell-ls-archive ((,class (:foreground ,info-alt :weight bold))))
   `(eshell-ls-backup ((,class (:foreground ,warning-alt))))
   `(eshell-ls-clutter ((,class (:foreground ,danger-alt))))
   `(eshell-ls-directory ((,class (:foreground ,primary-alt :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,secondary-alt))))
   `(eshell-ls-missing ((,class (:inherit ibm-theme-intense-danger))))
   `(eshell-ls-product ((,class (:foreground ,fg-special-warm))))
   `(eshell-ls-readonly ((,class (:foreground ,fg-special-cold))))
   `(eshell-ls-special ((,class (:foreground ,secondary :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,info :underline t))))
   `(eshell-ls-unreadable ((,class (:background ,bg-inactive :foreground ,fg-inactive))))
   `(eshell-prompt ((,class (:foreground ,info-alt-other :weight ,ibm-theme-bold))))
   ;;;; evil-mode
   `(evil-ex-commands ((,class (:foreground ,secondary-alt-other))))
   `(evil-ex-info ((,class (:foreground ,info-alt-other))))
   `(evil-ex-lazy-highlight ((,class (:inherit ibm-theme-refine-info))))
   `(evil-ex-search ((,class (:inherit ibm-theme-intense-success))))
   `(evil-ex-substitute-matches ((,class (:inherit ibm-theme-refine-warning :underline t))))
   `(evil-ex-substitute-replacement ((,class (:inherit ibm-theme-intense-success :weight bold))))
   ;;;; evil-goggles
   `(evil-goggles-change-face ((,class (:inherit ibm-theme-refine-warning))))
   `(evil-goggles-commentary-face ((,class (:inherit ibm-theme-subtle-neutral :slant ,ibm-theme-slant))))
   `(evil-goggles-default-face ((,class (:inherit ibm-theme-subtle-neutral))))
   `(evil-goggles-delete-face ((,class (:inherit ibm-theme-refine-danger))))
   `(evil-goggles-fill-and-move-face ((,class (:inherit evil-goggles-default-face))))
   `(evil-goggles-indent-face ((,class (:inherit evil-goggles-default-face))))
   `(evil-goggles-join-face ((,class (:inherit ibm-theme-subtle-success))))
   `(evil-goggles-nerd-commenter-face ((,class (:inherit evil-goggles-commentary-face))))
   `(evil-goggles-paste-face ((,class (:inherit ibm-theme-subtle-info))))
   `(evil-goggles-record-macro-face ((,class (:inherit ibm-theme-special-cold))))
   `(evil-goggles-replace-with-register-face ((,class (:inherit ibm-theme-refine-secondary))))
   `(evil-goggles-set-marker-face ((,class (:inherit ibm-theme-intense-secondary))))
   `(evil-goggles-shift-face ((,class (:inherit evil-goggles-default-face))))
   `(evil-goggles-surround-face ((,class (:inherit evil-goggles-default-face))))
   `(evil-goggles-yank-face ((,class (:inherit ibm-theme-subtle-primary))))
   ;;;; evil-visual-mark-mode
   `(evil-visual-mark-face ((,class (:inherit ibm-theme-intense-secondary))))
   ;;;; eww
   `(eww-invalid-certificate ((,class (:foreground ,danger-active))))
   `(eww-valid-certificate ((,class (:foreground ,success-active))))
   `(eww-form-checkbox ((,class (:box (:line-width 1 :color ,fg-inactive :style released-button) :background ,bg-inactive :foreground ,fg-main))))
   `(eww-form-file ((,class (:box (:line-width 1 :color ,fg-inactive :style released-button) :background ,bg-active :foreground ,fg-main))))
   `(eww-form-select ((,class (:inherit eww-form-checkbox))))
   `(eww-form-submit ((,class (:inherit eww-form-file))))
   `(eww-form-text ((,class (:box (:line-width 1 :color ,fg-inactive :style none) :background ,bg-active :foreground ,fg-active))))
   `(eww-form-textarea ((,class (:background ,bg-alt :foreground ,fg-main))))
   ;;;; eyebrowse
   `(eyebrowse-mode-line-active ((,class (:foreground ,primary-active :weight bold))))
   ;;;; fancy-dabbrev
   `(fancy-dabbrev-menu-face ((,class (:background ,bg-alt :foreground ,fg-alt))))
   `(fancy-dabbrev-preview-face ((,class (:foreground ,fg-alt :underline t))))
   `(fancy-dabbrev-selection-face ((,class (:inherit ibm-theme-intense-info :weight bold))))
   ;;;; flycheck
   `(flycheck-error
     ((,(append '((supports :underline (:style wave))) class)
       (:foreground ,danger-nuanced :underline (:color ,fg-lang-error :style wave)))
      (,class (:foreground ,danger-nuanced :underline (:color ,fg-lang-error :style line)))))
   `(flycheck-error-list-checker-name ((,class (:foreground ,secondary-active))))
   `(flycheck-error-list-column-number ((,class (:foreground ,fg-special-cold))))
   `(flycheck-error-list-error ((,class (:foreground ,danger :weight ,ibm-theme-bold))))
   `(flycheck-error-list-filename ((,class (:foreground ,primary))))
   `(flycheck-error-list-highlight ((,class (:inherit ibm-theme-special-warm))))
   `(flycheck-error-list-id ((,class (:foreground ,secondary-alt-other))))
   `(flycheck-error-list-id-with-explainer ((,class (:inherit flycheck-error-list-id :box t))))
   `(flycheck-error-list-info ((,class (:foreground ,info))))
   `(flycheck-error-list-line-number ((,class (:foreground ,fg-special-warm))))
   `(flycheck-error-list-warning ((,class (:foreground ,warning))))
   `(flycheck-fringe-error ((,class (:inherit ibm-theme-fringe-danger))))
   `(flycheck-fringe-info ((,class (:inherit ibm-theme-fringe-info))))
   `(flycheck-fringe-warning ((,class (:inherit ibm-theme-fringe-warning))))
   `(flycheck-info
     ((,(append '((supports :underline (:style wave))) class)
       (:foreground ,primary-nuanced :underline (:color ,fg-lang-note :style wave)))
      (,class (:foreground ,primary-nuanced :underline (:color ,fg-lang-note :style line)))))
   `(flycheck-verify-select-checker ((,class (:box (:line-width 1 :color nil :style released-button)))))
   `(flycheck-warning
     ((,(append '((supports :underline (:style wave))) class)
       (:foreground ,warning-nuanced :underline (:color ,fg-lang-warning :style wave)))
      (,class (:foreground ,warning-nuanced :underline (:color ,fg-lang-warning :style line)))))
   ;;;; flycheck-indicator
   `(flycheck-indicator-disabled ((,class (:foreground ,fg-inactive :slant ,ibm-theme-slant))))
   `(flycheck-indicator-error ((,class (:foreground ,danger-active :weight ,ibm-theme-bold))))
   `(flycheck-indicator-info ((,class (:foreground ,primary-active :weight ,ibm-theme-bold))))
   `(flycheck-indicator-running ((,class (:foreground ,secondary-active :weight ,ibm-theme-bold))))
   `(flycheck-indicator-success ((,class (:foreground ,success-active :weight ,ibm-theme-bold))))
   `(flycheck-indicator-warning ((,class (:foreground ,warning-active :weight ,ibm-theme-bold))))
   ;;;; flycheck-posframe
   `(flycheck-posframe-background-face ((,class (:background ,bg-alt))))
   `(flycheck-posframe-border-face ((,class (:foreground ,fg-alt))))
   `(flycheck-posframe-error-face ((,class (:foreground ,danger :weight bold))))
   `(flycheck-posframe-face ((,class (:foreground ,fg-main :slant ,ibm-theme-slant))))
   `(flycheck-posframe-info-face ((,class (:foreground ,info :weight bold))))
   `(flycheck-posframe-warning-face ((,class (:foreground ,warning :weight bold))))
   ;;;; flymake
   `(flymake-error
     ((,(append '((supports :underline (:style wave))) class)
       (:foreground ,danger-nuanced :underline (:color ,fg-lang-error :style wave)))
      (,class (:foreground ,danger-nuanced :underline (:color ,fg-lang-error :style line)))))
   `(flymake-note
     ((,(append '((supports :underline (:style wave))) class)
       (:foreground ,primary-nuanced :underline (:color ,fg-lang-note :style wave)))
      (,class (:foreground ,primary-nuanced :underline (:color ,fg-lang-note :style line)))))
   `(flymake-warning
     ((,(append '((supports :underline (:style wave))) class)
       (:foreground ,warning-nuanced :underline (:color ,fg-lang-warning :style wave)))
      (,class (:foreground ,warning-nuanced :underline (:color ,fg-lang-warning :style line)))))
   ;;;; flyspell
   `(flyspell-duplicate
     ((,(append '((supports :underline (:style wave))) class)
       (:foreground ,fg-lang-warning :underline (:style wave)))
      (,class (:foreground ,fg-lang-warning :underline t))))
   `(flyspell-incorrect
     ((,(append '((supports :underline (:style wave))) class)
       (:foreground ,fg-lang-error :underline (:style wave)))
      (,class (:foreground ,fg-lang-error :underline t))))
   ;;;; flyspell-correct
   `(flyspell-correct-highlight-face ((,class (:inherit ibm-theme-refine-success))))
   ;;;; flx
   `(flx-highlight-face ((,class (:inherit ibm-theme-intense-secondary))))
   ;;;; freeze-it
   `(freeze-it-show ((,class (:background ,bg-dim :foreground ,fg-special-warm))))
   ;;;; frog-menu
   `(frog-menu-action-keybinding-face ((,class (:foreground ,primary-alt-other))))
   `(frog-menu-actions-face ((,class (:foreground ,secondary))))
   `(frog-menu-border ((,class (:background ,bg-active))))
   `(frog-menu-candidates-face ((,class (:foreground ,fg-main))))
   `(frog-menu-posframe-background-face ((,class (:background ,bg-dim))))
   `(frog-menu-prompt-face ((,class (:foreground ,info))))
   ;;;; focus
   `(focus-unfocused ((,class (:foreground ,fg-unfocused))))
   ;;;; fold-this
   `(fold-this-overlay ((,class (:inherit ibm-theme-special-mild))))
   ;;;; font-lock
   `(font-lock-builtin-face ((,class (:foreground ,secondary-alt-other :weight ,ibm-theme-bold))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,fg-active :slant ,ibm-theme-slant))))
   `(font-lock-comment-face ((,class (:foreground ,fg-active :slant ,ibm-theme-slant))))
   `(font-lock-constant-face ((,class (:foreground ,primary-alt-other))))
   `(font-lock-doc-face ((,class (:foreground ,fg-special-calm :slant ,ibm-theme-slant))))
   `(font-lock-function-name-face ((,class (:foreground ,primary-alt))))
   `(font-lock-keyword-face ((,class (:foreground ,fg-dim :weight ,ibm-theme-bold))))
   `(font-lock-negation-char-face ((,class (:foreground ,warning :weight ,ibm-theme-bold))))
   `(font-lock-preprocessor-face ((,class (:foreground ,danger-alt-other))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,fg-escape-char-backslash :weight bold))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,fg-escape-char-construct :weight bold))))
   `(font-lock-string-face ((,class (:foreground ,success-intense))))
   `(font-lock-type-face ((,class (:foreground ,secondary))))
   `(font-lock-variable-name-face ((,class (:foreground ,info-alt-other))))
   `(font-lock-warning-face ((,class (:foreground ,warning-active :weight bold))))
   ;;;; forge
   `(forge-post-author ((,class (:foreground ,fg-main :weight bold))))
   `(forge-post-date ((,class (:foreground ,fg-special-cold))))
   `(forge-topic-closed ((,class (:foreground ,fg-alt))))
   `(forge-topic-merged ((,class (:foreground ,fg-alt))))
   `(forge-topic-open ((,class (:foreground ,fg-special-mild))))
   `(forge-topic-unmerged ((,class (:foreground ,secondary :slant ,ibm-theme-slant))))
   `(forge-topic-unread ((,class (:foreground ,fg-main :weight bold))))
   ;;;; fountain-mode
   `(fountain-character ((,class (:foreground ,secondary-alt-other))))
   `(fountain-comment ((,class (:foreground ,fg-alt :slant ,ibm-theme-slant))))
   `(fountain-dialog ((,class (:foreground ,primary))))
   `(fountain-metadata-key ((,class (:foreground ,primary-alt-other))))
   `(fountain-metadata-value ((,class (:foreground ,info-alt-other))))
   `(fountain-non-printing ((,class (:inherit fountain-comment))))
   `(fountain-note ((,class (:foreground ,fg-special-warm :slant ,ibm-theme-slant))))
   `(fountain-page-break ((,class (:foreground ,warning :weight bold))))
   `(fountain-page-number ((,class (:foreground ,warning-alt :weight bold))))
   `(fountain-paren ((,class (:foreground ,info))))
   `(fountain-scene-heading ((,class (:foreground ,fg-special-calm :weight bold))))
   `(fountain-section-heading ((,class (:inherit ,ibm-theme-variable-pitch
                                                 :foreground ,fg-main :weight bold
                                                 ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)))))
   `(fountain-section-heading-1 ((,class (:inherit ,ibm-theme-variable-pitch
                                                   :foreground ,fg-main :weight bold
                                                   ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)))))
   `(fountain-section-heading-2 ((,class (:inherit ,ibm-theme-variable-pitch
                                                   :foreground ,fg-special-warm :weight bold
                                                   ,@(ibm-dark-theme-scale ibm-dark-theme-scale-3)))))
   `(fountain-section-heading-3 ((,class (:inherit ,ibm-theme-variable-pitch
                                                   :foreground ,fg-special-cold :weight bold
                                                   ,@(ibm-dark-theme-scale ibm-dark-theme-scale-2)))))
   `(fountain-section-heading-4 ((,class (:inherit ,ibm-theme-variable-pitch
                                                   :foreground ,fg-special-mild :weight bold
                                                   ,@(ibm-dark-theme-scale ibm-dark-theme-scale-1)))))
   `(fountain-section-heading-5 ((,class (:inherit ,ibm-theme-variable-pitch
                                                   :foreground ,fg-special-calm :weight bold))))
   `(fountain-synopsis ((,class (:foreground ,success))))
   `(fountain-template ((,class (:foreground ,secondary-alt))))
   `(fountain-trans ((,class (:foreground ,secondary :weight bold))))
   ;;;; geiser
   `(geiser-font-lock-autodoc-current-arg ((,class (:foreground ,secondary))))
   `(geiser-font-lock-autodoc-identifier ((,class (:foreground ,primary))))
   `(geiser-font-lock-doc-button ((,class (:foreground ,info-alt :underline t))))
   `(geiser-font-lock-doc-link ((,class (:inherit link))))
   `(geiser-font-lock-error-link ((,class (:foreground ,danger-alt :underline t))))
   `(geiser-font-lock-image-button ((,class (:foreground ,success-alt :underline t))))
   `(geiser-font-lock-repl-input ((,class (:weight bold))))
   `(geiser-font-lock-repl-output ((,class (:foreground ,secondary-alt-other))))
   `(geiser-font-lock-repl-prompt ((,class (:foreground ,info-alt-other))))
   `(geiser-font-lock-xref-header ((,class (:weight bold))))
   `(geiser-font-lock-xref-link ((,class (:inherit link))))
   ;;;; git-commit
   `(git-commit-comment-action ((,class (:foreground ,fg-special-calm :slant ,ibm-theme-slant))))
   `(git-commit-comment-branch-local ((,class (:foreground ,info :slant ,ibm-theme-slant))))
   `(git-commit-comment-branch-remote ((,class (:foreground ,primary :slant ,ibm-theme-slant))))
   `(git-commit-comment-detached ((,class (:foreground ,warning :slant ,ibm-theme-slant))))
   `(git-commit-comment-file ((,class (:foreground ,primary :slant ,ibm-theme-slant))))
   `(git-commit-comment-heading ((,class (:foreground ,fg-main :weight bold :slant ,ibm-theme-slant))))
   `(git-commit-keyword ((,class (:foreground ,secondary))))
   `(git-commit-known-pseudo-header ((,class (:foreground ,fg-special-warm :weight bold))))
   `(git-commit-nonempty-second-line ((,class (:inherit ibm-theme-refine-warning :weight bold))))
   `(git-commit-overlong-summary ((,class (:inherit ibm-theme-subtle-warning))))
   `(git-commit-pseudo-header ((,class (:foreground ,fg-alt :weight bold))))
   `(git-commit-summary ((,class (:foreground ,secondary-alt-other))))
   ;;;; git-gutter
   `(git-gutter:added ((,class (:inherit ibm-theme-fringe-success))))
   `(git-gutter:deleted ((,class (:inherit ibm-theme-fringe-danger))))
   `(git-gutter:modified ((,class (:inherit ibm-theme-fringe-warning))))
   `(git-gutter:separator ((,class (:inherit ibm-theme-fringe-info))))
   `(git-gutter:unchanged ((,class (:inherit ibm-theme-fringe-secondary))))
   ;;;; git-gutter-fr
   `(git-gutter-fr:added ((,class (:inherit ibm-theme-fringe-success))))
   `(git-gutter-fr:deleted ((,class (:inherit ibm-theme-fringe-danger))))
   `(git-gutter-fr:modified ((,class (:inherit ibm-theme-fringe-warning))))
   ;;;; git-{gutter,fringe}+
   `(git-gutter+-added ((,class (:inherit ibm-theme-fringe-success))))
   `(git-gutter+-deleted ((,class (:inherit ibm-theme-fringe-danger))))
   `(git-gutter+-modified ((,class (:inherit ibm-theme-fringe-warning))))
   `(git-gutter+-separator ((,class (:inherit ibm-theme-fringe-info))))
   `(git-gutter+-unchanged ((,class (:inherit ibm-theme-fringe-secondary))))
   `(git-gutter-fr+-added ((,class (:inherit ibm-theme-fringe-success))))
   `(git-gutter-fr+-deleted ((,class (:inherit ibm-theme-fringe-danger))))
   `(git-gutter-fr+-modified ((,class (:inherit ibm-theme-fringe-warning))))
   ;;;; git-lens
   `(git-lens-added ((,class (:foreground ,success :weight bold))))
   `(git-lens-deleted ((,class (:foreground ,danger :weight bold))))
   `(git-lens-header ((,class (:height 1.1 :foreground ,info :weight bold))))
   `(git-lens-modified ((,class (:foreground ,warning :weight bold))))
   `(git-lens-renamed ((,class (:foreground ,secondary :weight bold))))
   ;;;; git-timemachine
   `(git-timemachine-commit ((,class (:foreground ,warning-active :weight bold))))
   `(git-timemachine-minibuffer-author-face ((,class (:foreground ,fg-special-warm))))
   `(git-timemachine-minibuffer-detail-face ((,class (:foreground ,danger-alt))))
   ;;;; git-walktree
   `(git-walktree-commit-face ((,class (:foreground ,warning))))
   `(git-walktree-symlink-face ((,class (:foreground ,info :underline t))))
   `(git-walktree-tree-face ((,class (:foreground ,secondary))))
   ;;;; gnus
   `(gnus-button ((,class (:inherit button))))
   `(gnus-cite-1 ((,class (:foreground ,primary-alt))))
   `(gnus-cite-10 ((,class (:foreground ,secondary-alt-other))))
   `(gnus-cite-11 ((,class (:foreground ,warning-alt-other))))
   `(gnus-cite-2 ((,class (:foreground ,danger-alt))))
   `(gnus-cite-3 ((,class (:foreground ,success-alt))))
   `(gnus-cite-4 ((,class (:foreground ,secondary-alt))))
   `(gnus-cite-5 ((,class (:foreground ,warning-alt))))
   `(gnus-cite-6 ((,class (:foreground ,info-alt))))
   `(gnus-cite-7 ((,class (:foreground ,primary-alt-other))))
   `(gnus-cite-8 ((,class (:foreground ,danger-alt-other))))
   `(gnus-cite-9 ((,class (:foreground ,success-alt-other))))
   `(gnus-cite-attribution ((,class (:foreground ,fg-main :slant italic))))
   `(gnus-emphasis-highlight-words ((,class (:inherit ibm-theme-refine-warning))))
   `(gnus-group-mail-1 ((,class (:foreground ,secondary :weight bold))))
   `(gnus-group-mail-1-empty ((,class (:foreground ,secondary))))
   `(gnus-group-mail-2 ((,class (:foreground ,secondary-alt :weight bold))))
   `(gnus-group-mail-2-empty ((,class (:foreground ,secondary-alt))))
   `(gnus-group-mail-3 ((,class (:foreground ,secondary-alt-other :weight bold))))
   `(gnus-group-mail-3-empty ((,class (:foreground ,secondary-alt-other))))
   `(gnus-group-mail-low ((,class (:foreground ,fg-special-calm :weight bold))))
   `(gnus-group-mail-low-empty ((,class (:foreground ,fg-special-calm))))
   `(gnus-group-news-1 ((,class (:foreground ,primary-alt-other :weight bold))))
   `(gnus-group-news-1-empty ((,class (:foreground ,primary-alt))))
   `(gnus-group-news-2 ((,class (:foreground ,success-alt-other :weight bold))))
   `(gnus-group-news-2-empty ((,class (:foreground ,success-alt))))
   `(gnus-group-news-3 ((,class (:foreground ,info-alt-other :weight bold))))
   `(gnus-group-news-3-empty ((,class (:foreground ,info))))
   `(gnus-group-news-4 ((,class (:foreground ,warning-nuanced :weight bold))))
   `(gnus-group-news-4-empty ((,class (:foreground ,success-nuanced))))
   `(gnus-group-news-5 ((,class (:foreground ,secondary-nuanced :weight bold))))
   `(gnus-group-news-5-empty ((,class (:foreground ,secondary-nuanced))))
   `(gnus-group-news-6 ((,class (:foreground ,danger-nuanced :weight bold))))
   `(gnus-group-news-6-empty ((,class (:foreground ,danger-nuanced))))
   `(gnus-group-news-low ((,class (:foreground ,fg-alt :weight bold))))
   `(gnus-group-news-low-empty ((,class (:foreground ,fg-alt))))
   `(gnus-header-content ((,class (:foreground ,fg-special-calm))))
   `(gnus-header-from ((,class (:foreground ,info-alt :weight bold :underline nil))))
   `(gnus-header-name ((,class (:foreground ,info-alt-other))))
   `(gnus-header-newsgroups ((,class (:foreground ,primary-alt :weight bold))))
   `(gnus-header-subject ((,class (:foreground ,secondary-alt-other :weight bold))))
   `(gnus-server-agent ((,class (:foreground ,info :weight bold))))
   `(gnus-server-closed ((,class (:foreground ,secondary :weight bold))))
   `(gnus-server-cloud ((,class (:foreground ,info-alt :weight bold))))
   `(gnus-server-cloud-host ((,class (:inherit ibm-theme-refine-info))))
   `(gnus-server-denied ((,class (:foreground ,danger :weight bold))))
   `(gnus-server-offline ((,class (:foreground ,warning :weight bold))))
   `(gnus-server-opened ((,class (:foreground ,success :weight bold))))
   `(gnus-signature ((,class (:foreground ,fg-special-cold :slant italic))))
   `(gnus-splash ((,class (:foreground ,fg-alt))))
   `(gnus-summary-cancelled ((,class (:background ,bg-mark-other :foreground ,fg-mark-other :weight bold))))
   `(gnus-summary-high-ancient ((,class (:foreground ,fg-alt :weight bold))))
   `(gnus-summary-high-read ((,class (:foreground ,fg-special-cold :weight bold))))
   `(gnus-summary-high-ticked ((,class (:foreground ,danger-alt :weight bold))))
   `(gnus-summary-high-undownloaded ((,class (:foreground ,warning :weight bold))))
   `(gnus-summary-high-unread ((,class (:foreground ,fg-main :weight bold))))
   `(gnus-summary-low-ancient ((,class (:foreground ,fg-alt :slant italic))))
   `(gnus-summary-low-read ((,class (:foreground ,fg-special-cold :slant italic))))
   `(gnus-summary-low-ticked ((,class (:foreground ,danger-refine-fg :slant italic))))
   `(gnus-summary-low-undownloaded ((,class (:foreground ,warning-refine-fg :slant italic))))
   `(gnus-summary-low-unread ((,class (:foreground ,fg-special-cold :weight bold))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,fg-special-calm))))
   `(gnus-summary-normal-read ((,class (:foreground ,fg-special-cold))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,danger-alt))))
   `(gnus-summary-normal-undownloaded ((,class (:foreground ,warning))))
   `(gnus-summary-normal-unread ((,class (:foreground ,fg-main))))
   `(gnus-summary-selected ((,class (:inherit ibm-theme-subtle-info))))
   ;;;; helm
   `(helm-M-x-key ((,class (:foreground ,secondary-alt-other :weight bold))))
   `(helm-action ((,class (:underline t))))
   `(helm-bookmark-addressbook ((,class (:foreground ,success-alt))))
   `(helm-bookmark-directory ((,class (:foreground ,primary :weight bold))))
   `(helm-bookmark-file ((,class (:foreground ,fg-main))))
   `(helm-bookmark-file-not-found ((,class (:background ,bg-alt :foreground ,fg-alt))))
   `(helm-bookmark-gnus ((,class (:foreground ,secondary))))
   `(helm-bookmark-info ((,class (:foreground ,info-alt))))
   `(helm-bookmark-man ((,class (:foreground ,warning-alt))))
   `(helm-bookmark-w3m ((,class (:foreground ,primary-alt))))
   `(helm-buffer-archive ((,class (:foreground ,info :weight bold))))
   `(helm-buffer-directory ((,class (:foreground ,primary :weight bold))))
   `(helm-buffer-file ((,class (:foreground ,fg-main))))
   `(helm-buffer-modified ((,class (:foreground ,warning-alt))))
   `(helm-buffer-not-saved ((,class (:foreground ,danger-alt))))
   `(helm-buffer-process ((,class (:foreground ,secondary))))
   `(helm-buffer-saved-out ((,class (:background ,bg-alt :foreground ,danger :weight bold))))
   `(helm-buffer-size ((,class (:foreground ,fg-alt))))
   `(helm-candidate-number ((,class (:foreground ,info-active))))
   `(helm-candidate-number-suspended ((,class (:foreground ,warning-active))))
   `(helm-delete-async-message ((,class (:foreground ,secondary-active :weight bold))))
   `(helm-eob-line ((,class (:background ,bg-main :foreground ,fg-main))))
   `(helm-etags-file ((,class (:foreground ,fg-dim :underline t))))
   `(helm-ff-denied ((,class (:inherit ibm-theme-intense-danger))))
   `(helm-ff-directory ((,class (:inherit helm-buffer-directory))))
   `(helm-ff-dirs ((,class (:foreground ,primary-alt-other :weight bold))))
   `(helm-ff-dotted-directory ((,class (:background ,bg-alt :foreground ,fg-alt :weight bold))))
   `(helm-ff-dotted-symlink-directory ((,class (:inherit helm-ff-dotted-directory :underline t))))
   `(helm-ff-executable ((,class (:foreground ,secondary-alt))))
   `(helm-ff-file ((,class (:foreground ,fg-main))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,danger :underline t))))
   `(helm-ff-pipe ((,class (:inherit ibm-theme-subtle-secondary))))
   `(helm-ff-prefix ((,class (:inherit ibm-theme-subtle-warning))))
   `(helm-ff-socket ((,class (:foreground ,danger-alt-other))))
   `(helm-ff-suid ((,class (:inherit ibm-theme-refine-danger))))
   `(helm-ff-symlink ((,class (:foreground ,info :underline t))))
   `(helm-ff-truename ((,class (:foreground ,primary-alt-other))))
   `(helm-grep-cmd-line ((,class (:foreground ,warning-alt-other))))
   `(helm-grep-file ((,class (:foreground ,fg-special-cold :weight bold))))
   `(helm-grep-finish ((,class (:foreground ,success-active))))
   `(helm-grep-lineno ((,class (:foreground ,fg-special-warm))))
   `(helm-grep-match ((,class (:inherit ibm-theme-special-calm))))
   `(helm-header ((,class (:foreground ,fg-special-cold :weight bold))))
   `(helm-header-line-left-margin ((,class (:foreground ,warning-intense :weight bold))))
   `(helm-history-deleted ((,class (:inherit ibm-theme-intense-danger :weight bold))))
   `(helm-history-remote ((,class (:foreground ,danger-alt-other))))
   `(helm-lisp-completion-info ((,class (:foreground ,fg-special-warm))))
   `(helm-lisp-show-completion ((,class (:inherit ibm-theme-refine-warning))))
   `(helm-locate-finish ((,class (:foreground ,success-active))))
   `(helm-match ((,class (:inherit ibm-theme-refine-info :weight bold))))
   `(helm-match-item ((,class (:inherit ibm-theme-subtle-info))))
   `(helm-minibuffer-prompt ((,class (:inherit minibuffer-prompt))))
   `(helm-moccur-buffer ((,class (:foreground ,info-alt-other :underline t))))
   `(helm-mode-prefix ((,class (:inherit ibm-theme-intense-secondary))))
   `(helm-non-file-buffer ((,class (:foreground ,fg-alt))))
   `(helm-prefarg ((,class (:foreground ,danger-active))))
   `(helm-resume-need-update ((,class (,@(and (>= emacs-major-version 27) '(:extend t))
                                       :inherit ibm-theme-refine-secondary))))
   `(helm-selection ((,class (,@(and (>= emacs-major-version 27) '(:extend t))
                              :inherit ibm-theme-refine-primary :weight bold))))
   `(helm-selection-line ((,class (,@(and (>= emacs-major-version 27) '(:extend t))
                                   :inherit ibm-theme-special-cold))))
   `(helm-separator ((,class (:foreground ,fg-special-mild))))
   `(helm-time-zone-current ((,class (:foreground ,success))))
   `(helm-time-zone-home ((,class (:foreground ,secondary))))
   `(helm-source-header ((,class (:foreground ,danger-alt :weight bold
                                              ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)))))
   `(helm-top-columns ((,class (:inherit helm-header))))
   `(helm-ucs-char ((,class (:foreground ,warning-alt-other))))
   `(helm-visible-mark ((,class (:inherit ibm-theme-subtle-info))))
   ;;;; helm-ls-git
   `(helm-ls-git-added-copied-face ((,class (:foreground ,success-intense))))
   `(helm-ls-git-added-modified-face ((,class (:foreground ,warning-intense))))
   `(helm-ls-git-conflict-face ((,class (:foreground ,danger-intense :weight bold))))
   `(helm-ls-git-deleted-and-staged-face ((,class (:foreground ,danger-nuanced))))
   `(helm-ls-git-deleted-not-staged-face ((,class (:foreground ,danger))))
   `(helm-ls-git-modified-and-staged-face ((,class (:foreground ,warning-nuanced))))
   `(helm-ls-git-modified-not-staged-face ((,class (:foreground ,warning))))
   `(helm-ls-git-renamed-modified-face ((,class (:foreground ,secondary))))
   `(helm-ls-git-untracked-face ((,class (:foreground ,fg-special-cold))))
   ;;;; helm-switch-shell
   `(helm-switch-shell-new-shell-face ((,class (:inherit ibm-theme-refine-secondary :weight bold))))
   ;;;; helm-xref
   `(helm-xref-file-name ((,class (:foreground ,fg-special-cold :weight bold))))
   `(helm-xref-file-name ((,class (:foreground ,fg-special-warm))))
   ;;;; helpful
   `(helpful-heading  ((,class (:inherit ,ibm-theme-variable-pitch :foreground ,fg-main :weight bold
                                         ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)))))
   ;;;; highlight region or ad-hoc regexp
   `(hi-black-b ((,class (:background ,fg-main :foreground ,bg-main))))
   `(hi-primary ((,class (:background ,bg-alt :foreground ,primary :underline t))))
   `(hi-primary-b ((,class (:inherit ibm-theme-intense-primary))))
   `(hi-success ((,class (:background ,bg-alt :foreground ,success :underline t))))
   `(hi-success-b ((,class (:inherit ibm-theme-intense-success))))
   `(hi-pink ((,class (:background ,bg-alt :foreground ,secondary :underline t))))
   `(hi-danger-b ((,class (:inherit ibm-theme-intense-danger))))
   `(hi-warning ((,class (:background ,bg-alt :foreground ,warning :underline t))))
   `(highlight ((,class (:inherit ibm-theme-intense-primary))))
   `(highlight-changes ((,class (:foreground ,warning-alt-other))))
   `(highlight-changes-delete ((,class (:foreground ,danger-alt-other :underline t))))
   `(hl-line ((,class (:background ,bg-hl-line))))
   `(region ((,class (:background ,bg-region :foreground ,fg-main))))
   `(secondary-selection ((,class (:background ,bg-inactive :foreground ,fg-inactive))))
   ;;;; highlight-blocks
   `(highlight-blocks-depth-1-face ((,class (:background ,bg-dim :foreground ,fg-main))))
   `(highlight-blocks-depth-2-face ((,class (:background ,bg-alt :foreground ,fg-main))))
   `(highlight-blocks-depth-3-face ((,class (:background ,bg-special-cold :foreground ,fg-main))))
   `(highlight-blocks-depth-4-face ((,class (:background ,bg-special-calm :foreground ,fg-main))))
   `(highlight-blocks-depth-5-face ((,class (:background ,bg-special-warm :foreground ,fg-main))))
   `(highlight-blocks-depth-6-face ((,class (:background ,bg-special-mild :foreground ,fg-main))))
   `(highlight-blocks-depth-7-face ((,class (:background ,bg-inactive :foreground ,fg-main))))
   `(highlight-blocks-depth-8-face ((,class (:background ,bg-active :foreground ,fg-main))))
   `(highlight-blocks-depth-9-face ((,class (:background ,info-subtle-bg :foreground ,fg-main))))
   ;;;; highlight-defined
   `(highlight-defined-builtin-function-name-face ((,class (:foreground ,secondary))))
   `(highlight-defined-face-name-face ((,class (:foreground ,fg-main))))
   `(highlight-defined-function-name-face ((,class (:foreground ,secondary))))
   `(highlight-defined-macro-name-face ((,class (:foreground ,secondary-alt))))
   `(highlight-defined-special-form-name-face ((,class (:foreground ,secondary-alt-other))))
   `(highlight-defined-variable-name-face ((,class (:foreground ,info))))
   ;;;; highlight-escape-sequences (`hes-mode')
   `(hes-escape-backslash-face ((,class (:foreground ,fg-escape-char-construct :weight bold))))
   `(hes-escape-sequence-face ((,class (:foreground ,fg-escape-char-backslash :weight bold))))
   ;;;; highlight-numbers
   `(highlight-numbers-number ((,class (:foreground ,primary-alt-other))))
   ;;;; highlight-symbol
   `(highlight-symbol-face ((,class (:inherit ibm-theme-special-mild))))
   ;;;; highlight-thing
   `(highlight-thing ((,class (:background ,bg-alt :foreground ,info))))
   ;;;; hl-fill-column
   `(hl-fill-column-face ((,class (:background ,bg-active :foreground ,fg-active))))
   ;;;; hl-todo
   `(hl-todo ((,class (:foreground ,danger-alt-other :weight bold))))
   ;;;; hydra
   `(hydra-face-amaranth ((,class (:foreground ,warning :weight bold))))
   `(hydra-face-primary ((,class (:foreground ,primary-alt :weight bold))))
   `(hydra-face-pink ((,class (:foreground ,secondary-alt :weight bold))))
   `(hydra-face-danger ((,class (:foreground ,danger :weight bold))))
   `(hydra-face-teal ((,class (:foreground ,info :weight bold))))
   ;;;; icomplete
   `(icomplete-first-match ((,class (:foreground ,secondary :weight bold))))
   ;;;; icomplete-vertical
   `(icomplete-vertical-separator ((,class (:foreground ,fg-alt))))
   ;;;; ido-mode
   `(ido-first-match ((,class (:foreground ,secondary :weight bold))))
   `(ido-incomplete-regexp ((,class (:inherit error))))
   `(ido-indicator ((,class (:inherit ibm-theme-subtle-warning))))
   `(ido-only-match ((,class (:foreground ,secondary-intense :weight bold))))
   `(ido-subdir ((,class (:foreground ,primary-alt-other))))
   `(ido-virtual ((,class (:foreground ,warning-alt-other))))
   ;;;; iedit
   `(iedit-occurrence ((,class (:inherit ibm-theme-refine-primary))))
   `(iedit-read-only-occurrence ((,class (:inherit ibm-theme-intense-warning))))
   ;;;; iflipb
   `(iflipb-current-buffer-face ((,class (:foreground ,info-alt :weight bold))))
   `(iflipb-other-buffer-face ((,class (:foreground ,fg-alt))))
   ;;;; imenu-list
   `(imenu-list-entry-face-0 ((,class (:foreground ,secondary-alt-other))))
   `(imenu-list-entry-face-1 ((,class (:foreground ,info-alt-other))))
   `(imenu-list-entry-face-2 ((,class (:foreground ,warning-alt-other))))
   `(imenu-list-entry-face-3 ((,class (:foreground ,success-alt-other))))
   `(imenu-list-entry-subalist-face-0 ((,class (:foreground ,secondary-alt-other :weight bold :underline t))))
   `(imenu-list-entry-subalist-face-1 ((,class (:foreground ,info-alt-other :weight bold :underline t))))
   `(imenu-list-entry-subalist-face-2 ((,class (:foreground ,warning-alt-other :weight bold :underline t))))
   `(imenu-list-entry-subalist-face-3 ((,class (:foreground ,success-alt-other :weight bold :underline t))))
   ;;;; indium
   `(indium-breakpoint-face ((,class (:foreground ,danger-active))))
   `(indium-frame-url-face ((,class (:foreground ,fg-alt :underline t))))
   `(indium-keyword-face ((,class (:foreground ,secondary-alt-other))))
   `(indium-litable-face ((,class (:foreground ,fg-special-warm :slant ,ibm-theme-slant))))
   `(indium-repl-error-face ((,class (:foreground ,danger :weight bold))))
   `(indium-repl-prompt-face ((,class (:foreground ,info-alt-other))))
   `(indium-repl-stdout-face ((,class (:foreground ,fg-main))))
   ;;;; info
   `(Info-quoted ((,class (:foreground ,secondary)))) ; the capitalisation is canonical
   `(info-header-node ((,class (:foreground ,fg-special-warm))))
   `(info-header-xref ((,class (:foreground ,primary-active))))
   `(info-index-match ((,class (:inherit match))))
   `(info-menu-star ((,class (:foreground ,fg-main))))
   `(info-node ((,class (:weight bold))))
   ;;;; info-colors
   `(info-colors-lisp-code-block ((,class (:inherit fixed-pitch))))
   `(info-colors-ref-item-command ((,class (:foreground ,secondary))))
   `(info-colors-ref-item-constant ((,class (:foreground ,primary-alt-other))))
   `(info-colors-ref-item-function ((,class (:foreground ,secondary))))
   `(info-colors-ref-item-macro ((,class (:foreground ,secondary-alt-other :weight ,ibm-theme-bold))))
   `(info-colors-ref-item-other ((,class (:foreground ,info))))
   `(info-colors-ref-item-special-form ((,class (:foreground ,secondary-alt-other :weight ,ibm-theme-bold))))
   `(info-colors-ref-item-syntax-class ((,class (:foreground ,secondary))))
   `(info-colors-ref-item-type ((,class (:foreground ,secondary-alt))))
   `(info-colors-ref-item-user-option ((,class (:foreground ,info))))
   `(info-colors-ref-item-variable ((,class (:foreground ,info))))
   ;;;; interaction-log
   `(ilog-buffer-face ((,class (:foreground ,secondary-alt-other))))
   `(ilog-change-face ((,class (:foreground ,secondary-alt))))
   `(ilog-echo-face ((,class (:foreground ,warning-alt-other))))
   `(ilog-load-face ((,class (:foreground ,success))))
   `(ilog-message-face ((,class (:foreground ,fg-alt))))
   `(ilog-non-change-face ((,class (:foreground ,primary))))
   ;;;; ioccur
   `(ioccur-cursor ((,class (:foreground ,fg-main))))
   `(ioccur-invalid-regexp ((,class (:foreground ,danger))))
   `(ioccur-match-face ((,class (:inherit ibm-theme-special-calm))))
   `(ioccur-match-overlay-face ((,class (,@(and (>= emacs-major-version 27) '(:extend t))
                                         :inherit ibm-theme-special-cold))))
   `(ioccur-num-line-face ((,class (:foreground ,fg-special-warm))))
   `(ioccur-overlay-face ((,class (,@(and (>= emacs-major-version 27) '(:extend t))
                                   :inherit ibm-theme-refine-primary))))
   `(ioccur-regexp-face ((,class (:inherit ibm-theme-intense-secondary :weight bold))))
   `(ioccur-title-face ((,class (:foreground ,danger-alt :weight bold
                                             ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)))))
   ;;;; isearch, occur, and the like
   `(isearch ((,class (:inherit ibm-theme-intense-success :weight bold))))
   `(isearch-fail ((,class (:inherit ibm-theme-refine-danger))))
   `(lazy-highlight ((,class (:inherit ibm-theme-refine-info))))
   `(match ((,class (:inherit ibm-theme-refine-primary))))
   `(query-replace ((,class (:inherit ibm-theme-intense-warning :weight bold))))
   ;;;; ivy
   `(ivy-action ((,class (:foreground ,danger-alt :weight bold))))
   `(ivy-completions-annotations ((,class (:foreground ,fg-special-cold :slant ,ibm-theme-slant))))
   `(ivy-confirm-face ((,class (:foreground ,info))))
   `(ivy-current-match ((,class (,@(and (>= emacs-major-version 27) '(:extend t))
                                 :inherit ibm-theme-active-info :weight bold))))
   `(ivy-cursor ((,class (:background ,fg-main :foreground ,bg-main))))
   `(ivy-grep-info ((,class (:foreground ,info-alt))))
   `(ivy-grep-line-number ((,class (:foreground ,fg-special-warm))))
   `(ivy-highlight-face ((,class (:foreground ,secondary))))
   `(ivy-match-required-face ((,class (:inherit error))))
   `(ivy-minibuffer-match-face-1 ((,class (:inherit ibm-theme-subtle-neutral))))
   `(ivy-minibuffer-match-face-2 ((,class (:inherit ibm-theme-refine-success :weight bold))))
   `(ivy-minibuffer-match-face-3 ((,class (:inherit ibm-theme-refine-info :weight bold))))
   `(ivy-minibuffer-match-face-4 ((,class (:inherit ibm-theme-refine-secondary :weight bold))))
   `(ivy-minibuffer-match-highlight ((,class (:inherit ibm-theme-subtle-primary :weight bold))))
   `(ivy-modified-buffer ((,class (:foreground ,warning :slant ,ibm-theme-slant))))
   `(ivy-modified-outside-buffer ((,class (:foreground ,warning-alt :slant ,ibm-theme-slant))))
   `(ivy-org ((,class (:foreground ,info-alt-other))))
   `(ivy-prompt-match ((,class (:inherit ivy-current-match))))
   `(ivy-remote ((,class (:foreground ,secondary))))
   `(ivy-separator ((,class (:foreground ,fg-alt))))
   `(ivy-subdir ((,class (:foreground ,primary-alt-other))))
   `(ivy-virtual ((,class (:foreground ,secondary-alt-other))))
   `(ivy-yanked-word ((,class (:inherit ibm-theme-refine-primary))))
   ;;;; ivy-posframe
   `(ivy-posframe ((,class (:background ,bg-dim :foreground ,fg-main))))
   `(ivy-posframe-border ((,class (:background ,bg-active))))
   `(ivy-posframe-cursor ((,class (:background ,fg-main :foreground ,bg-main))))
   ;;;; jira (org-jira)
   `(jiralib-comment-face ((,class (:background ,bg-alt))))
   `(jiralib-comment-header-face ((,class (:weight bold))))
   `(jiralib-issue-info-face ((,class (:inherit ibm-theme-special-warm))))
   `(jiralib-issue-info-header-face ((,class (:inherit ibm-theme-special-warm :weight bold))))
   `(jiralib-issue-summary-face ((,class (:weight bold))))
   `(jiralib-link-filter-face ((,class (:underline t))))
   `(jiralib-link-issue-face ((,class (:underline t))))
   `(jiralib-link-project-face ((,class (:underline t))))
   ;;;; js2-mode
   `(js2-error ((,class (:foreground ,danger))))
   `(js2-external-variable ((,class (:foreground ,info-alt-other))))
   `(js2-function-call ((,class (:foreground ,secondary))))
   `(js2-function-param ((,class (:foreground ,primary))))
   `(js2-instance-member ((,class (:foreground ,secondary-alt-other))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,fg-main))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground ,info))))
   `(js2-jsdoc-tag ((,class (:foreground ,fg-special-calm))))
   `(js2-jsdoc-type ((,class (:foreground ,fg-special-cold))))
   `(js2-jsdoc-value ((,class (:foreground ,fg-special-warm))))
   `(js2-object-property ((,class (:foreground ,fg-main))))
   `(js2-object-property-access ((,class (:foreground ,fg-main))))
   `(js2-private-function-call ((,class (:foreground ,success-alt-other))))
   `(js2-private-member ((,class (:foreground ,fg-special-mild))))
   `(js2-warning ((,class (:foreground ,warning-alt :underline t))))
   ;;;; julia
   `(julia-macro-face ((,class (:foreground ,secondary :weight ,ibm-theme-bold))))
   `(julia-quoted-symbol-face ((,class (:foreground ,primary-alt-other))))
   ;;;; jupyter
   `(jupyter-eval-overlay ((,class (:foreground ,primary :weight bold))))
   `(jupyter-repl-input-prompt ((,class (:foreground ,info-alt-other))))
   `(jupyter-repl-output-prompt ((,class (:foreground ,secondary-alt-other))))
   `(jupyter-repl-traceback ((,class (:inherit ibm-theme-intense-danger))))
   ;;;; kaocha-runner
   `(kaocha-runner-error-face ((,class (:foreground ,danger))))
   `(kaocha-runner-success-face ((,class (:foreground ,success))))
   `(kaocha-runner-warning-face ((,class (:foreground ,warning))))
   ;;;; keycast
   `(keycast-command ((,class (:foreground ,primary-active :weight bold))))
   `(keycast-key ((,class (:box ,(ibm-dark-theme-modeline-box primary-intense primary-active t -3)
                                ,@(ibm-dark-theme-modeline-props
                                   primary-active bg-main
                                   primary-active bg-active)))))
   ;;;; line numbers (display-line-numbers-mode and global variant)
   `(line-number ((,class (:background ,bg-dim :foreground ,fg-alt))))
   `(line-number-current-line ((,class (:background ,bg-active :foreground ,fg-active :weight bold))))
   ;;;; lsp-mode
   `(lsp-face-highlight-read ((,class (:inherit ibm-theme-subtle-primary :underline t))))
   `(lsp-face-highlight-textual ((,class (:inherit ibm-theme-subtle-primary))))
   `(lsp-face-highlight-write ((,class (:inherit ibm-theme-refine-primary :weight bold))))
   `(lsp-face-semhl-constant ((,class (:foreground ,primary-alt-other))))
   `(lsp-face-semhl-deprecated
     ((,(append '((supports :underline (:style wave))) class)
       (:foreground ,warning :underline (:style wave)))
      (,class (:foreground ,warning :underline t))))
   `(lsp-face-semhl-enummember ((,class (:foreground ,primary-alt-other))))
   `(lsp-face-semhl-field ((,class (:foreground ,info-alt))))
   `(lsp-face-semhl-field-static ((,class (:foreground ,info-alt :slant ,ibm-theme-slant))))
   `(lsp-face-semhl-function ((,class (:foreground ,secondary))))
   `(lsp-face-semhl-method ((,class (:foreground ,secondary))))
   `(lsp-face-semhl-namespace ((,class (:foreground ,secondary-alt :weight ,ibm-theme-bold))))
   `(lsp-face-semhl-preprocessor ((,class (:foreground ,secondary))))
   `(lsp-face-semhl-static-method ((,class (:foreground ,secondary :slant ,ibm-theme-slant))))
   `(lsp-face-semhl-type-class ((,class (:foreground ,secondary-alt))))
   `(lsp-face-semhl-type-enum ((,class (:foreground ,secondary-alt))))
   `(lsp-face-semhl-type-primitive ((,class (:foreground ,secondary-alt :slant ,ibm-theme-slant))))
   `(lsp-face-semhl-type-template ((,class (:foreground ,secondary-alt :slant ,ibm-theme-slant))))
   `(lsp-face-semhl-type-typedef ((,class (:foreground ,secondary-alt :slant ,ibm-theme-slant))))
   `(lsp-face-semhl-variable ((,class (:foreground ,info))))
   `(lsp-face-semhl-variable-local ((,class (:foreground ,info))))
   `(lsp-face-semhl-variable-parameter ((,class (:foreground ,info-alt-other))))
   `(lsp-lens-face ((,class (:height 0.8 :foreground ,fg-alt))))
   `(lsp-lens-mouse-face ((,class (:height 0.8 :foreground ,primary-alt-other :underline t))))
   `(lsp-ui-doc-background ((,class (:background ,bg-alt))))
   `(lsp-ui-doc-header ((,class (:background ,bg-header :foreground ,fg-header))))
   `(lsp-ui-doc-url ((,class (:foreground ,primary-alt-other :underline t))))
   `(lsp-ui-peek-filename ((,class (:foreground ,fg-special-warm))))
   `(lsp-ui-peek-footer ((,class (:background ,bg-header :foreground ,fg-header))))
   `(lsp-ui-peek-header ((,class (:background ,bg-header :foreground ,fg-header))))
   `(lsp-ui-peek-highlight ((,class (:inherit ibm-theme-subtle-primary))))
   `(lsp-ui-peek-line-number ((,class (:foreground ,fg-alt))))
   `(lsp-ui-peek-list ((,class (:background ,bg-dim))))
   `(lsp-ui-peek-peek ((,class (:background ,bg-alt))))
   `(lsp-ui-peek-selection ((,class (:inherit ibm-theme-subtle-info))))
   `(lsp-ui-sideline-code-action ((,class (:foreground ,warning))))
   `(lsp-ui-sideline-current-symbol ((,class (:height 0.99 :box (:line-width -1 :style nil) :foreground ,fg-main :weight bold))))
   `(lsp-ui-sideline-symbol ((,class (:height 0.99 :box (:line-width -1 :style nil) :foreground ,fg-alt :weight bold))))
   `(lsp-ui-sideline-symbol-info ((,class (:height 0.99 :slant italic))))
   ;;;; magit
   `(magit-bisect-bad ((,class (:foreground ,danger-alt-other))))
   `(magit-bisect-good ((,class (:foreground ,success-alt-other))))
   `(magit-bisect-skip ((,class (:foreground ,warning-alt-other))))
   `(magit-blame-date ((,class (:foreground ,fg-dim))))
   `(magit-blame-dimmed ((,class (:foreground ,fg-inactive))))
   `(magit-blame-hash ((,class (:foreground ,fg-special-warm))))
   `(magit-blame-heading ((,class (:background ,bg-main :foreground ,fg-special-cold :weight bold))))
   `(magit-blame-highlight ((,class (:inherit ibm-theme-special-cold :weight bold))))
   `(magit-blame-margin ((,class (:inherit magit-blame-highlight))))
   `(magit-blame-name ((,class (:foreground ,fg-main))))
   `(magit-blame-summary ((,class (:foreground ,fg-main))))
   `(magit-branch-current ((,class (:foreground ,primary-alt-other :box t))))
   `(magit-branch-local ((,class (:foreground ,primary-alt))))
   `(magit-branch-remote ((,class (:foreground ,secondary-alt))))
   `(magit-branch-remote-head ((,class (:foreground ,secondary-alt-other :box t))))
   `(magit-branch-upstream ((,class (:slant italic))))
   `(magit-cherry-equivalent ((,class (:background ,bg-main :foreground ,secondary-intense))))
   `(magit-cherry-unmatched ((,class (:background ,bg-main :foreground ,info-intense))))
   `(magit-diff-added ((,class ,(ibm-dark-theme-diffs
                                 bg-main success
                                 bg-diff-added fg-diff-added))))
   `(magit-diff-added-highlight ((,class ,(ibm-dark-theme-diffs
                                           bg-dim success
                                           bg-diff-focus-added fg-diff-focus-added))))
   `(magit-diff-base ((,class ,(ibm-dark-theme-diffs
                                bg-main warning
                                bg-diff-changed fg-diff-changed))))
   `(magit-diff-base-highlight ((,class ,(ibm-dark-theme-diffs
                                          bg-dim warning
                                          bg-diff-focus-changed fg-diff-focus-changed))))
   `(magit-diff-context ((,class (:foreground ,fg-unfocused))))
   `(magit-diff-context-highlight ((,class (:background ,bg-active :foreground ,fg-active))))
   `(magit-diff-file-heading ((,class (:foreground ,fg-special-cold :weight bold))))
   `(magit-diff-file-heading-highlight ((,class (:inherit ibm-theme-special-cold :weight bold))))
   `(magit-diff-file-heading-selection ((,class (:background ,bg-alt :foreground ,info))))
   `(magit-diff-hunk-heading ((,class (:background ,bg-active :foreground ,fg-active :weight bold))))
   `(magit-diff-hunk-heading-highlight ((,class (:inherit ibm-theme-diff-heading :weight bold))))
   `(magit-diff-hunk-heading-selection ((,class (:inherit ibm-theme-intense-info))))
   `(magit-diff-hunk-region ((,class (:weight bold))))
   `(magit-diff-lines-boundary ((,class (:background ,bg-main))))
   `(magit-diff-lines-heading ((,class (:inherit ibm-theme-refine-secondary))))
   `(magit-diff-removed ((,class ,(ibm-dark-theme-diffs
                                   bg-main danger
                                   bg-diff-removed fg-diff-removed))))
   `(magit-diff-removed-highlight ((,class ,(ibm-dark-theme-diffs
                                             bg-dim danger
                                             bg-diff-focus-removed fg-diff-focus-removed))))
   `(magit-diffstat-added ((,class (:foreground ,success))))
   `(magit-diffstat-removed ((,class (:foreground ,danger))))
   `(magit-dimmed ((,class (:foreground ,fg-alt))))
   `(magit-filename ((,class (:foreground ,fg-special-cold))))
   `(magit-hash ((,class (:foreground ,fg-special-warm))))
   `(magit-head ((,class (:inherit magit-branch-local))))
   `(magit-header-line ((,class (:foreground ,info-active :weight bold))))
   `(magit-header-line-key ((,class (:foreground ,primary-active :weight bold))))
   `(magit-header-line-log-select ((,class (:foreground ,fg-main :weight bold))))
   `(magit-keyword ((,class (:foreground ,secondary))))
   `(magit-keyword-squash ((,class (:foreground ,warning-alt-other :weight bold))))
   `(magit-log-author ((,class (:foreground ,info))))
   `(magit-log-date ((,class (:foreground ,secondary))))
   `(magit-log-graph ((,class (:foreground ,fg-dim))))
   `(magit-mode-line-process ((,class (:foreground ,primary-active :weight bold))))
   `(magit-mode-line-process-error ((,class (:foreground ,danger-active :weight bold))))
   `(magit-process-ng ((,class (:inherit error))))
   `(magit-process-ok ((,class (:inherit success))))
   `(magit-reflog-amend ((,class (:background ,bg-main :foreground ,secondary-intense))))
   `(magit-reflog-checkout ((,class (:background ,bg-main :foreground ,primary-intense))))
   `(magit-reflog-cherry-pick ((,class (:background ,bg-main :foreground ,success-intense))))
   `(magit-reflog-commit ((,class (:background ,bg-main :foreground ,success-intense))))
   `(magit-reflog-merge ((,class (:background ,bg-main :foreground ,success-intense))))
   `(magit-reflog-other ((,class (:background ,bg-main :foreground ,info-intense))))
   `(magit-reflog-rebase ((,class (:background ,bg-main :foreground ,secondary-intense))))
   `(magit-reflog-remote ((,class (:background ,bg-main :foreground ,info-intense))))
   `(magit-reflog-reset ((,class (:background ,bg-main :foreground ,danger-intense))))
   `(magit-refname ((,class (:foreground ,fg-alt))))
   `(magit-refname-pullreq ((,class (:foreground ,fg-alt))))
   `(magit-refname-stash ((,class (:foreground ,fg-alt))))
   `(magit-refname-wip ((,class (:foreground ,fg-alt))))
   `(magit-section ((,class (:background ,bg-dim :foreground ,fg-main))))
   `(magit-section-heading ((,class (:foreground ,info-alt-other :weight bold))))
   `(magit-section-heading-selection ((,class (:inherit ibm-theme-refine-info :weight bold))))
   `(magit-section-highlight ((,class (:background ,bg-alt))))
   `(magit-sequence-done ((,class (:foreground ,success-alt))))
   `(magit-sequence-drop ((,class (:foreground ,danger-alt))))
   `(magit-sequence-exec ((,class (:foreground ,secondary-alt))))
   `(magit-sequence-head ((,class (:foreground ,info-alt))))
   `(magit-sequence-onto ((,class (:foreground ,fg-alt))))
   `(magit-sequence-part ((,class (:foreground ,warning-alt))))
   `(magit-sequence-pick ((,class (:foreground ,primary-alt))))
   `(magit-sequence-stop ((,class (:foreground ,danger))))
   `(magit-signature-bad ((,class (:background ,bg-main :foreground ,danger-intense :weight bold))))
   `(magit-signature-error ((,class (:background ,bg-main :foreground ,danger-intense))))
   `(magit-signature-expired ((,class (:background ,bg-main :foreground ,warning-intense))))
   `(magit-signature-expired-key ((,class (:background ,bg-main :foreground ,warning-intense))))
   `(magit-signature-good ((,class (:background ,bg-main :foreground ,success-intense))))
   `(magit-signature-revoked ((,class (:background ,bg-main :foreground ,secondary-intense))))
   `(magit-signature-untrusted ((,class (:background ,bg-main :foreground ,info-intense))))
   `(magit-tag ((,class (:foreground ,warning-alt-other))))
   ;;;; magit-imerge
   `(magit-imerge-overriding-value ((,class (:foreground ,danger-alt :weight bold))))
   ;;;; man
   `(Man-overstrike ((,class (:foreground ,secondary :weight bold))))
   `(Man-reverse ((,class (:inherit ibm-theme-subtle-secondary))))
   `(Man-underline ((,class (:foreground ,info :underline t))))
   ;;;; markdown-mode
   `(markdown-blockquote-face ((,class (:background ,bg-dim :foreground ,fg-special-warm :slant ,ibm-theme-slant))))
   `(markdown-bold-face ((,class (:weight bold))))
   `(markdown-code-face ((,class (:inherit fixed-pitch))))
   `(markdown-comment-face ((,class (:foreground ,fg-alt :slant ,ibm-theme-slant))))
   `(markdown-footnote-marker-face ((,class (:foreground ,info-alt :weight bold))))
   `(markdown-footnote-text-face ((,class (:foreground ,fg-main :slant ,ibm-theme-slant))))
   `(markdown-gfm-checkbox-face ((,class (:foreground ,info-alt-other))))
   `(markdown-header-delimiter-face ((,class (:foreground ,fg-dim :weight normal))))
   `(markdown-header-face ((,class (:weight bold))))
   `(markdown-header-rule-face ((,class (:foreground ,fg-special-warm :weight bold))))
   `(markdown-hr-face ((,class (:foreground ,fg-special-warm :weight bold))))
   `(markdown-html-attr-name-face ((,class (:foreground ,info))))
   `(markdown-html-attr-value-face ((,class (:foreground ,primary))))
   `(markdown-html-entity-face ((,class (:foreground ,info))))
   `(markdown-html-tag-delimiter-face ((,class (:foreground ,fg-special-mild))))
   `(markdown-html-tag-name-face ((,class (:foreground ,secondary-alt))))
   `(markdown-inline-code-face ((,class (:foreground ,secondary))))
   `(markdown-italic-face ((,class (:slant italic))))
   `(markdown-language-info-face ((,class (:foreground ,fg-special-cold))))
   `(markdown-language-keyword-face ((,class (:foreground ,success-alt-other))))
   `(markdown-line-break-face ((,class (:inherit ibm-theme-refine-info :underline t))))
   `(markdown-link-face ((,class (:inherit link))))
   `(markdown-link-title-face ((,class (:foreground ,fg-special-cold :slant ,ibm-theme-slant))))
   `(markdown-list-face ((,class (:foreground ,fg-dim))))
   `(markdown-markup-face ((,class (:foreground ,fg-alt))))
   `(markdown-math-face ((,class (:foreground ,secondary-alt-other))))
   `(markdown-metadata-key-face ((,class (:foreground ,info-alt-other))))
   `(markdown-metadata-value-face ((,class (:foreground ,primary-alt))))
   `(markdown-missing-link-face ((,class (:foreground ,warning :weight bold))))
   `(markdown-plain-url-face ((,class (:inherit markdown-link-face))))
   `(markdown-pre-face ((,class (:foreground ,fg-special-mild))))
   `(markdown-reference-face ((,class (:inherit markdown-markup-face))))
   `(markdown-strike-through-face ((,class (:strike-through t))))
   `(markdown-table-face ((,class (:foreground ,fg-special-cold))))
   `(markdown-url-face ((,class (:foreground ,primary))))
   ;;;; markup-faces (`adoc-mode')
   `(markup-anchor-face ((,class (:foreground ,fg-inactive))))
   `(markup-attribute-face ((,class (:foreground ,fg-inactive :slant italic))))
   `(markup-big-face ((,class (:height 1.3 :foreground ,primary-nuanced))))
   `(markup-bold-face ((,class (:foreground ,danger-nuanced :weight bold))))
   `(markup-code-face ((,class (:inherit fixed-pitch :foreground ,secondary))))
   `(markup-command-face ((,class (:foreground ,fg-inactive))))
   `(markup-comment-face ((,class (:foreground ,fg-alt :slant ,ibm-theme-slant))))
   `(markup-complex-replacement-face ((,class (:box (:line-width 2 :color nil :style released-button)
                                                    :inherit ibm-theme-refine-secondary))))
   `(markup-emphasis-face ((,class (:foreground ,fg-special-cold :slant italic))))
   `(markup-error-face ((,class (:foreground ,danger :weight bold))))
   `(markup-gen-face ((,class (:foreground ,secondary-alt))))
   `(markup-internal-reference-face ((,class (:foreground ,fg-inactive :underline t))))
   `(markup-italic-face ((,class (:foreground ,fg-special-cold :slant italic))))
   `(markup-list-face ((,class (:inherit ibm-theme-special-calm))))
   `(markup-meta-face ((,class (:foreground ,fg-inactive))))
   `(markup-meta-hide-face ((,class (:foreground ,fg-alt))))
   `(markup-passthrough-face ((,class (:inherit fixed-pitch :foreground ,info))))
   `(markup-preprocessor-face ((,class (:foreground ,secondary))))
   `(markup-replacement-face ((,class (:foreground ,warning-alt-other))))
   `(markup-secondary-text-face ((,class (:height 0.8 :foreground ,secondary-nuanced))))
   `(markup-small-face ((,class (:height 0.8 :foreground ,fg-main))))
   `(markup-strong-face ((,class (:foreground ,danger-nuanced :weight bold))))
   `(markup-subscript-face ((,class (:height 0.8 :foreground ,fg-special-cold))))
   `(markup-superscript-face ((,class (:height 0.8 :foreground ,fg-special-cold))))
   `(markup-table-cell-face ((,class (:inherit ibm-theme-special-cold))))
   `(markup-table-face ((,class (:inherit ibm-theme-subtle-info))))
   `(markup-table-row-face ((,class (:inherit ibm-theme-subtle-info))))
   `(markup-title-0-face ((,class (:height 3.0 :foreground ,primary-nuanced))))
   `(markup-title-1-face ((,class (:height 2.4 :foreground ,primary-nuanced))))
   `(markup-title-2-face ((,class (:height 1.8 :foreground ,primary-nuanced))))
   `(markup-title-3-face ((,class (:height 1.4 :foreground ,primary-nuanced))))
   `(markup-title-4-face ((,class (:height 1.2 :foreground ,primary-nuanced))))
   `(markup-title-5-face ((,class (:height 1.2 :foreground ,primary-nuanced :underline t))))
   `(markup-value-face ((,class (:foreground ,fg-inactive))))
   `(markup-verbatim-face ((,class (:inherit ibm-theme-special-mild))))
   ;;;; mentor
   `(mentor-download-message ((,class (:foreground ,fg-special-warm))))
   `(mentor-download-name ((,class (:foreground ,fg-special-cold))))
   `(mentor-download-progress ((,class (:foreground ,primary-alt-other))))
   `(mentor-download-size ((,class (:foreground ,secondary-alt-other))))
   `(mentor-download-speed-down ((,class (:foreground ,info-alt))))
   `(mentor-download-speed-up ((,class (:foreground ,danger-alt))))
   `(mentor-download-state ((,class (:foreground ,warning-alt))))
   `(mentor-highlight-face ((,class (:inherit ibm-theme-subtle-primary))))
   `(mentor-tracker-name ((,class (:foreground ,secondary-alt))))
   ;;;; messages
   `(message-cited-text-1 ((,class (:foreground ,info))))
   `(message-cited-text-2 ((,class (:foreground ,success))))
   `(message-cited-text-3 ((,class (:foreground ,warning))))
   `(message-cited-text-4 ((,class (:foreground ,danger))))
   `(message-header-cc ((,class (:foreground ,primary-alt))))
   `(message-header-name ((,class (:foreground ,info-alt))))
   `(message-header-newsgroups ((,class (:foreground ,primary :weight bold))))
   `(message-header-other ((,class (:foreground ,info-alt-other :weight bold))))
   `(message-header-subject ((,class (:foreground ,secondary-alt-other :weight bold))))
   `(message-header-to ((,class (:foreground ,secondary-alt :weight bold))))
   `(message-header-xheader ((,class (:foreground ,primary-alt-other))))
   `(message-mml ((,class (:foreground ,success-alt-other))))
   `(message-separator ((,class (:background ,bg-alt :foreground ,fg-special-warm))))
   ;;;; modeline
   `(mode-line ((,class (:box ,(ibm-dark-theme-modeline-box bg-inactive fg-inactive t)
                              ,@(ibm-dark-theme-modeline-props
                                 bg-active fg-dim
                                 bg-active fg-active)))))
   `(mode-line-buffer-id ((,class (:weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,primary-active :weight bold))))
   `(mode-line-highlight ((,class (:inherit ibm-theme-active-primary :box (:line-width -1 :style pressed-button)))))
   `(mode-line-inactive ((,class (:box ,(ibm-dark-theme-modeline-box bg-active bg-active)
                                       ,@(ibm-dark-theme-modeline-props
                                          bg-dim fg-inactive
                                          bg-inactive fg-inactive)))))
   ;;;; mood-line
   `(mood-line-modified ((,class (:foreground ,secondary-active))))
   `(mood-line-status-error ((,class (:foreground ,danger-active :weight bold))))
   `(mood-line-status-info ((,class (:foreground ,info-active))))
   `(mood-line-status-neutral ((,class (:foreground ,primary-active))))
   `(mood-line-status-success ((,class (:foreground ,success-active))))
   `(mood-line-status-warning ((,class (:foreground ,warning-active :weight bold))))
   `(mood-line-unimportant ((,class (:foreground ,fg-inactive))))
   ;;;; mu4e
   `(mu4e-attach-number-face ((,class (:foreground ,info-alt :weight bold))))
   `(mu4e-cited-1-face ((,class (:foreground ,primary-alt))))
   `(mu4e-cited-2-face ((,class (:foreground ,danger-alt))))
   `(mu4e-cited-3-face ((,class (:foreground ,success-alt))))
   `(mu4e-cited-4-face ((,class (:foreground ,secondary-alt))))
   `(mu4e-cited-5-face ((,class (:foreground ,info-alt))))
   `(mu4e-cited-6-face ((,class (:foreground ,primary-alt-other))))
   `(mu4e-cited-7-face ((,class (:foreground ,danger-alt-other))))
   `(mu4e-compose-header-face ((,class (:foreground ,success-alt))))
   `(mu4e-compose-separator-face ((,class (:background ,bg-active :foreground ,fg-main :box t))))
   `(mu4e-contact-face ((,class (:foreground ,info))))
   `(mu4e-context-face ((,class (:foreground ,primary-active))))
   `(mu4e-draft-face ((,class (:foreground ,secondary-refine-fg))))
   `(mu4e-flagged-face ((,class (:foreground ,danger-alt-other))))
   `(mu4e-footer-face ((,class (:foreground ,fg-alt))))
   `(mu4e-forwarded-face ((,class (:foreground ,success-alt-other))))
   `(mu4e-header-face ((,class (:foreground ,fg-main))))
   `(mu4e-header-highlight-face ((,class (,@(and (>= emacs-major-version 27) '(:extend t))
                                          :background ,bg-hl-line))))
   `(mu4e-header-key-face ((,class (:foreground ,fg-dim :weight bold))))
   `(mu4e-header-marks-face ((,class (:foreground ,secondary-alt :weight bold))))
   `(mu4e-header-title-face ((,class (:foreground ,fg-special-warm))))
   `(mu4e-header-value-face ((,class (:foreground ,secondary-alt-other))))
   `(mu4e-highlight-face ((,class (:foreground ,primary-intense :weight bold))))
   `(mu4e-link-face ((,class (:inherit link))))
   `(mu4e-modeline-face ((,class (:foreground ,secondary-active))))
   `(mu4e-moved-face ((,class (:foreground ,primary-refine-fg))))
   `(mu4e-ok-face ((,class (:foreground ,success-intense :weight bold))))
   `(mu4e-region-code ((,class (:inherit ibm-theme-special-calm))))
   `(mu4e-replied-face ((,class (:foreground ,info-refine-fg))))
   `(mu4e-special-header-value-face ((,class (:foreground ,secondary :weight bold))))
   `(mu4e-system-face ((,class (:foreground ,fg-alt))))
   `(mu4e-title-face ((,class (:foreground ,fg-main))))
   `(mu4e-unread-face ((,class (:foreground ,fg-main :weight bold))))
   `(mu4e-url-number-face ((,class (:foreground ,primary-alt-other :weight bold))))
   `(mu4e-view-body-face ((,class (:background ,bg-main :foreground ,fg-main))))
   `(mu4e-warning-face ((,class (:inherit warning))))
   ;;;; mu4e-conversation
   `(mu4e-conversation-header ((,class (:inherit ibm-theme-special-cold))))
   `(mu4e-conversation-sender-1 ((,class (:foreground ,fg-special-warm))))
   `(mu4e-conversation-sender-2 ((,class (:foreground ,fg-special-cold))))
   `(mu4e-conversation-sender-3 ((,class (:foreground ,fg-special-mild))))
   `(mu4e-conversation-sender-4 ((,class (:foreground ,fg-alt))))
   `(mu4e-conversation-sender-5 ((,class (:foreground ,warning-refine-fg))))
   `(mu4e-conversation-sender-6 ((,class (:foreground ,info-refine-fg))))
   `(mu4e-conversation-sender-7 ((,class (:foreground ,success-refine-fg))))
   `(mu4e-conversation-sender-8 ((,class (:foreground ,primary-refine-fg))))
   `(mu4e-conversation-sender-me ((,class (:foreground ,fg-main))))
   `(mu4e-conversation-unread ((,class (:weight bold))))
   ;;;; multiple-cursors
   `(mc/cursor-bar-face ((,class (:height 1 :background ,fg-main))))
   `(mc/cursor-face ((,class (:inverse-video t))))
   `(mc/region-face ((,class (:inherit region))))
   ;;;; neotree
   `(neo-banner-face ((,class (:foreground ,secondary))))
   `(neo-button-face ((,class (:inherit button))))
   `(neo-dir-link-face ((,class (:foreground ,primary :weight bold))))
   `(neo-expand-btn-face ((,class (:foreground ,info))))
   `(neo-file-link-face ((,class (:foreground ,fg-main))))
   `(neo-header-face ((,class (:foreground ,fg-main :weight bold))))
   `(neo-root-dir-face ((,class (:foreground ,info-alt :weight bold))))
   `(neo-vc-added-face ((,class (:foreground ,success))))
   `(neo-vc-conflict-face ((,class (:foreground ,danger :Weight bold))))
   `(neo-vc-default-face ((,class (:foreground ,fg-main))))
   `(neo-vc-edited-face ((,class (:foreground ,warning))))
   `(neo-vc-ignored-face ((,class (:foreground ,fg-inactive))))
   `(neo-vc-missing-face ((,class (:foreground ,danger-alt))))
   `(neo-vc-needs-merge-face ((,class (:foreground ,secondary-alt))))
   `(neo-vc-needs-update-face ((,class (:underline t))))
   `(neo-vc-removed-face ((,class (:strike-through t))))
   `(neo-vc-unlocked-changes-face ((,class (:inherit ibm-theme-refine-primary))))
   `(neo-vc-up-to-date-face ((,class (:foreground ,fg-alt))))
   `(neo-vc-user-face ((,class (:foreground ,secondary))))
   ;;;; no-emoji
   `(no-emoji ((,class (:foreground ,info))))
   ;;;; notmuch
   `(notmuch-tag-deleted ((,class (:foreground ,danger :strike-through t))))
   `(notmuch-tag-unread ((,class (:foreground ,danger))))
   `(notmuch-tag-face ((,class (:foreground ,secondary))))
   `(notmuch-tree-match-tag-face ((,class (:foreground ,success))))
   `(notmuch-tree-match-author-face ((,class (:foreground ,success))))
   `(notmuch-tree-no-match-face ((,class (:foreground ,fg-dim))))
   `(notmuch-tag-flagged ((,class (:foreground ,warning))))
   `(notmuch-wash-cited-text ((,class (:foreground ,fg-inactive))))
   `(notmuch-wash-toggle-button ((,class (:foreground ,fg-active))))
   ;;;; num3-mode
   `(num3-face-even ((,class (:background ,bg-alt :weight bold))))
   ;;;; orderless
   `(orderless-match-face-0 ((,class (:foreground ,primary-alt :weight bold))))
   `(orderless-match-face-1 ((,class (:foreground ,secondary-alt :weight bold))))
   `(orderless-match-face-2 ((,class (:foreground ,success-alt-other :weight bold))))
   `(orderless-match-face-3 ((,class (:foreground ,warning-alt-other :weight bold))))
   ;;;; org
   `(org-agenda-calendar-event ((,class (:foreground ,primary-alt))))
   `(org-agenda-calendar-sexp ((,class (:foreground ,info-alt))))
   `(org-agenda-clocking ((,class (:inherit ibm-theme-special-cold))))
   `(org-agenda-column-dateline ((,class (:inherit ibm-theme-subtle-neutral))))
   `(org-agenda-current-time ((,class (:inherit ibm-theme-intense-info))))
   `(org-agenda-date ((,class (:inherit ,ibm-theme-variable-pitch :foreground ,fg-main
                                        ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)))))
   `(org-agenda-date-today ((,class (:inherit ,ibm-theme-variable-pitch :background ,info-subtle-bg
                                              :foreground ,fg-main :weight bold
                                              ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)))))
   `(org-agenda-date-weekend ((,class (:inherit ,ibm-theme-variable-pitch :foreground ,fg-alt
                                                ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)))))
   `(org-agenda-diary ((,class (:background ,bg-main :foreground ,fg-main))))
   `(org-agenda-dimmed-todo-face ((,class (:inherit ibm-theme-subtle-neutral))))
   `(org-agenda-done ((,class (,@(ibm-dark-theme-org-todo-block success-nuanced-bg success-nuanced success)))))
   `(org-agenda-filter-category ((,class (:background ,bg-active :foreground ,fg-main :box t))))
   `(org-agenda-filter-effort ((,class (:background ,bg-active :foreground ,fg-main :box t))))
   `(org-agenda-filter-regexp ((,class (:background ,bg-active :foreground ,fg-main :box t))))
   `(org-agenda-filter-tags ((,class (:background ,bg-active :foreground ,fg-main :box t))))
   `(org-agenda-restriction-lock ((,class (:background ,bg-dim :foreground ,fg-dim))))
   `(org-agenda-structure ((,class (:inherit ,ibm-theme-variable-pitch
                                             :foreground ,fg-special-mild
                                             ,@(ibm-dark-theme-scale ibm-dark-theme-scale-3)))))
   `(org-archived ((,class (:background ,bg-alt :foreground ,fg-alt))))
   `(org-block ((,class (,@(ibm-dark-theme-org-src-block bg-dim bg-main)
                         :inherit fixed-pitch :foreground ,fg-main))))
   `(org-block-begin-line ((,class (,@(and (>= emacs-major-version 27)
                                           ibm-dark-theme-distinct-org-blocks
                                           '(:extend t))
                                    :inherit fixed-pitch :background ,bg-alt :foreground ,fg-special-mild))))
   `(org-block-end-line ((,class (:inherit org-block-begin-line))))
   `(org-checkbox ((,class (:weight bold))))
   `(org-checkbox-statistics-done ((,class (:foreground ,success
                                                        ,@(ibm-dark-theme-heading-block
                                                           success-nuanced-bg success-nuanced)))))
   `(org-checkbox-statistics-todo ((,class (:foreground ,warning
                                                        ,@(ibm-dark-theme-heading-block
                                                           warning-nuanced-bg warning-nuanced)))))
   `(org-clock-overlay ((,class (:inherit ibm-theme-special-cold))))
   `(org-code ((,class (:inherit fixed-pitch :foreground ,secondary))))
   `(org-column ((,class (:background ,bg-alt))))
   `(org-column-title ((,class (:underline t :background ,bg-alt :weight bold))))
   `(org-date ((,class (:foreground ,primary-nuanced))))
   `(org-date-selected ((,class (:inherit ibm-theme-intense-info :weight bold))))
   `(org-default ((,class (:background ,bg-main :foreground ,fg-main))))
   `(org-document-info ((,class (:foreground ,fg-special-cold))))
   `(org-document-info-keyword ((,class (:inherit fixed-pitch :foreground ,fg-alt))))
   `(org-document-title ((,class (,@(ibm-dark-theme-scale ibm-dark-theme-scale-5)
                                  :foreground ,fg-special-cold :weight bold))))
   `(org-done ((,class (,@(ibm-dark-theme-org-todo-block success-nuanced-bg success-nuanced success)))))
   `(org-drawer ((,class (:foreground ,info-alt))))
   `(org-ellipsis ((,class (:foreground nil)))) ; inherits from the heading's colour
   `(org-footnote ((,class (:foreground ,primary-alt :underline t))))
   `(org-formula ((,class (:foreground ,danger-alt))))
   `(org-habit-alert-face ((,class (:inherit ibm-theme-intense-warning))))
   `(org-habit-alert-future-face ((,class (:inherit ibm-theme-refine-warning))))
   `(org-habit-clear-face ((,class (:inherit ibm-theme-intense-secondary))))
   `(org-habit-clear-future-face ((,class (:inherit ibm-theme-refine-secondary))))
   `(org-habit-overdue-face ((,class (:inherit ibm-theme-intense-danger))))
   `(org-habit-overdue-future-face ((,class (:inherit ibm-theme-refine-danger))))
   `(org-habit-ready-face ((,class (:inherit ibm-theme-intense-primary))))
   `(org-habit-ready-future-face ((,class (:inherit ibm-theme-refine-primary))))
   `(org-headline-done ((,class (:foreground ,success-nuanced
                                             ,@(ibm-dark-theme-heading-block
                                                success-nuanced-bg success-nuanced)))))
   `(org-hide ((,class (:foreground ,bg-main))))
   `(org-indent ((,class (:inherit (fixed-pitch org-hide)))))
   `(org-latex-and-related ((,class (:foreground ,secondary-refine-fg))))
   `(org-level-1 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                    ,@(ibm-dark-theme-heading-foreground fg-main secondary-alt-other)
                                    ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)
                                    ,@(ibm-dark-theme-heading-block secondary-nuanced-bg secondary-nuanced)))))
   `(org-level-2 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                    ,@(ibm-dark-theme-heading-foreground fg-special-warm secondary-alt)
                                    ,@(ibm-dark-theme-scale ibm-dark-theme-scale-3)
                                    ,@(ibm-dark-theme-heading-block danger-nuanced-bg danger-nuanced)))))
   `(org-level-3 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                    ,@(ibm-dark-theme-heading-foreground fg-special-cold primary)
                                    ,@(ibm-dark-theme-scale ibm-dark-theme-scale-2)
                                    ,@(ibm-dark-theme-heading-block primary-nuanced-bg primary-nuanced)))))
   `(org-level-4 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                    ,@(ibm-dark-theme-heading-foreground fg-special-mild info-alt-other)
                                    ,@(ibm-dark-theme-scale ibm-dark-theme-scale-1)
                                    ,@(ibm-dark-theme-heading-block info-nuanced-bg info-nuanced)))))
   `(org-level-5 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                    ,@(ibm-dark-theme-heading-foreground fg-special-calm success-alt)
                                    ,@(ibm-dark-theme-heading-block success-nuanced-bg success-nuanced)))))
   `(org-level-6 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                    ,@(ibm-dark-theme-heading-foreground warning-nuanced warning-alt-other)
                                    ,@(ibm-dark-theme-heading-block warning-nuanced-bg warning-nuanced)))))
   `(org-level-7 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                    ,@(ibm-dark-theme-heading-foreground danger-nuanced danger-alt)
                                    ,@(ibm-dark-theme-heading-block danger-nuanced-bg danger-nuanced)))))
   `(org-level-8 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                    ,@(ibm-dark-theme-heading-foreground fg-dim secondary)
                                    ,@(ibm-dark-theme-heading-block bg-alt fg-alt)))))
   `(org-link ((,class (:inherit link))))
   `(org-list-dt ((,class (:weight bold))))
   `(org-macro ((,class (:inherit org-latex-and-related))))
   `(org-meta-line ((,class (:inherit fixed-pitch :foreground ,fg-alt :slant ,ibm-theme-slant))))
   `(org-mode-line-clock ((,class (:foreground ,fg-main))))
   `(org-mode-line-clock-overrun ((,class (:inherit ibm-theme-active-danger))))
   `(org-priority ((,class (,@(ibm-dark-theme-org-todo-block primary-nuanced-bg primary-nuanced secondary)
                            ,@(ibm-dark-theme-heading-foreground secondary primary-alt)))))
   `(org-quote ((,class (,@(ibm-dark-theme-org-src-block bg-dim bg-main)
                         :foreground ,fg-special-cold :slant ,ibm-theme-slant))))
   `(org-scheduled ((,class (:foreground ,fg-special-cold))))
   `(org-scheduled-previously ((,class (:foreground ,fg-special-warm))))
   `(org-scheduled-today ((,class (:foreground ,warning-alt-other))))
   `(org-sexp-date ((,class (:inherit org-date))))
   `(org-special-keyword ((,class (,@(ibm-dark-theme-org-todo-block info-nuanced-bg info-nuanced info-alt)))))
   `(org-table ((,class (:inherit fixed-pitch :foreground ,fg-special-cold))))
   `(org-tag ((,class (:foreground ,secondary-nuanced :weight normal))))
   `(org-tag-group ((,class (:foreground ,info-nuanced :weight bold))))
   `(org-target ((,class (:underline t))))
   `(org-time-grid ((,class (:foreground ,info-nuanced))))
   `(org-todo ((,class (,@(ibm-dark-theme-org-todo-block secondary-nuanced-bg secondary-nuanced secondary-alt-other)
                        ,@(ibm-dark-theme-heading-foreground secondary-alt-other danger-alt-other)))))
   `(org-upcoming-deadline ((,class (:foreground ,danger-alt-other))))
   `(org-upcoming-distant-deadline ((,class (:foreground ,danger-nuanced))))
   `(org-verbatim ((,class (:inherit fixed-pitch :background ,bg-alt :foreground ,fg-special-calm))))
   `(org-verse ((,class (:inherit org-quote))))
   `(org-warning ((,class (:foreground ,primary-intense))))
   ;;;; org-journal
   `(org-journal-calendar-entry-face ((,class (:foreground ,warning-alt-other :slant ,ibm-theme-slant))))
   `(org-journal-calendar-scheduled-face ((,class (:foreground ,danger-alt-other :slant ,ibm-theme-slant))))
   `(org-journal-highlight ((,class (:foreground ,secondary-alt))))
   ;;;; org-noter
   `(org-noter-no-notes-exist-face ((,class (:foreground ,danger-active :weight bold))))
   `(org-noter-notes-exist-face ((,class (:foreground ,success-active :weight bold))))
   ;;;; org-pomodoro
   `(org-pomodoro-mode-line ((,class (:foreground ,danger-active))))
   `(org-pomodoro-mode-line-break ((,class (:foreground ,info-active))))
   `(org-pomodoro-mode-line-overtime ((,class (:foreground ,danger-active :weight bold))))
   ;;;; org-recur
   `(org-recur ((,class (:foreground ,secondary-active))))
   ;;;; org-roam
   `(org-roam-link ((,class (:foreground ,primary-alt-other :underline t))))
   `(org-roam-backlink ((,class (:foreground ,success-alt-other :underline t))))
   ;;;; org-superstar
   `(org-superstar-item ((,class (:foreground ,fg-main))))
   `(org-superstar-leading ((,class (:foreground ,fg-whitespace))))
   ;;;; org-treescope
   `(org-treescope-faces--markerinternal-midday ((,class (:inherit ibm-theme-intense-primary))))
   `(org-treescope-faces--markerinternal-range ((,class (:inherit ibm-theme-special-mild))))
   ;;;; origami
   `(origami-fold-header-face ((,class (:background ,bg-dim :foreground ,fg-dim :box t))))
   `(origami-fold-replacement-face ((,class (:background ,bg-alt :foreground ,fg-alt))))
   ;;;; outline-mode
   `(outline-1 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                  ,@(ibm-dark-theme-heading-foreground fg-main secondary-alt-other)
                                  ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)
                                  ,@(ibm-dark-theme-heading-block secondary-nuanced-bg secondary-nuanced)))))
   `(outline-2 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                  ,@(ibm-dark-theme-heading-foreground fg-special-warm secondary-alt)
                                  ,@(ibm-dark-theme-scale ibm-dark-theme-scale-3)
                                  ,@(ibm-dark-theme-heading-block danger-nuanced-bg danger-nuanced)))))
   `(outline-3 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                  ,@(ibm-dark-theme-heading-foreground fg-special-cold primary)
                                  ,@(ibm-dark-theme-scale ibm-dark-theme-scale-2)
                                  ,@(ibm-dark-theme-heading-block primary-nuanced-bg primary-nuanced)))))
   `(outline-4 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                  ,@(ibm-dark-theme-heading-foreground fg-special-mild info-alt-other)
                                  ,@(ibm-dark-theme-scale ibm-dark-theme-scale-1)
                                  ,@(ibm-dark-theme-heading-block info-nuanced-bg info-nuanced)))))
   `(outline-5 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                  ,@(ibm-dark-theme-heading-foreground fg-special-calm success-alt)
                                  ,@(ibm-dark-theme-heading-block success-nuanced-bg success-nuanced)))))
   `(outline-6 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                  ,@(ibm-dark-theme-heading-foreground warning-nuanced warning-alt-other)
                                  ,@(ibm-dark-theme-heading-block warning-nuanced-bg warning-nuanced)))))
   `(outline-7 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                  ,@(ibm-dark-theme-heading-foreground danger-nuanced danger-alt)
                                  ,@(ibm-dark-theme-heading-block danger-nuanced-bg danger-nuanced)))))
   `(outline-8 ((,class (:inherit ,ibm-theme-variable-pitch :weight bold
                                  ,@(ibm-dark-theme-heading-foreground fg-dim secondary)
                                  ,@(ibm-dark-theme-heading-block bg-alt fg-alt)))))
   ;;;; outline-minor-faces
   `(outline-minor-0 ((,class (:background ,bg-alt))))
   ;;;; package (M-x list-packages)
   `(package-description ((,class (:foreground ,fg-special-cold))))
   `(package-help-section-name ((,class (:foreground ,secondary-alt-other :weight bold))))
   `(package-name ((,class (:inherit link))))
   `(package-status-avail-obso ((,class (:foreground ,danger :weight bold))))
   `(package-status-available ((,class (:foreground ,fg-special-mild))))
   `(package-status-built-in ((,class (:foreground ,secondary))))
   `(package-status-dependency ((,class (:foreground ,secondary-alt-other))))
   `(package-status-disabled ((,class (:inherit ibm-theme-subtle-danger))))
   `(package-status-external ((,class (:foreground ,info-alt-other))))
   `(package-status-held ((,class (:foreground ,warning-alt))))
   `(package-status-incompat ((,class (:foreground ,warning :weight bold))))
   `(package-status-installed ((,class (:foreground ,fg-special-warm))))
   `(package-status-new ((,class (:foreground ,success :weight bold))))
   `(package-status-unsigned ((,class (:foreground ,danger-alt :weight bold))))
   ;;;; page-break-lines
   `(page-break-lines ((,class (:inherit default :foreground ,fg-window-divider-outer))))
   ;;;; paradox
   `(paradox-archive-face ((,class (:foreground ,fg-special-mild))))
   `(paradox-comment-face ((,class (:foreground ,fg-alt :slant ,ibm-theme-slant))))
   `(paradox-commit-tag-face ((,class (:inherit ibm-theme-refine-secondary :box t))))
   `(paradox-description-face ((,class (:foreground ,fg-special-cold))))
   `(paradox-description-face-multiline ((,class (:foreground ,fg-special-cold))))
   `(paradox-download-face ((,class (:foreground ,primary-alt-other :weight ,ibm-theme-bold))))
   `(paradox-highlight-face ((,class (:foreground ,info-alt-other :weight ,ibm-theme-bold))))
   `(paradox-homepage-button-face ((,class (:foreground ,secondary-alt-other :underline t))))
   `(paradox-mode-line-face ((,class (:foreground ,info-active :weight bold))))
   `(paradox-name-face ((,class (:foreground ,primary :underline t))))
   `(paradox-star-face ((,class (:foreground ,secondary))))
   `(paradox-starred-face ((,class (:foreground ,secondary-alt))))
   ;;;; paren-face
   `(parenthesis ((,class (:foreground ,fg-alt))))
   ;;;; parrot
   `(parrot-rotate-rotation-highlight-face ((,class (:inherit ibm-theme-refine-secondary))))
   ;;;; pass
   `(pass-mode-directory-face ((,class (:foreground ,fg-special-cold :weight bold))))
   `(pass-mode-entry-face ((,class (:background ,bg-main :foreground ,fg-main))))
   `(pass-mode-header-face ((,class (:foreground ,fg-special-warm))))
   ;;;; persp-mode
   `(persp-face-lighter-buffer-not-in-persp ((,class (:inherit ibm-theme-intense-danger))))
   `(persp-face-lighter-default ((,class (:foreground ,primary-active :weight bold))))
   `(persp-face-lighter-nil-persp ((,class (:foreground ,fg-active :weight bold))))
   ;;;; perspective
   `(persp-selected-face ((,class (:foreground ,primary-active :weight bold))))
   ;;;; phi-grep
   `(phi-grep-heading-face  ((,class (:foreground ,danger-alt :weight bold
                                                  ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)))))
   `(phi-grep-line-number-face ((,class (:foreground ,fg-special-warm))))
   `(phi-grep-match-face ((,class (:inherit ibm-theme-special-calm))))
   `(phi-grep-modified-face ((,class (:inherit ibm-theme-refine-warning))))
   `(phi-grep-overlay-face ((,class (:inherit ibm-theme-refine-primary))))
   ;;;; phi-search
   `(phi-replace-preview-face ((,class (:inherit ibm-theme-intense-secondary))))
   `(phi-search-failpart-face ((,class (:inherit ibm-theme-refine-danger))))
   `(phi-search-match-face ((,class (:inherit ibm-theme-refine-info))))
   `(phi-search-selection-face ((,class (:inherit ibm-theme-intense-success :weight bold))))
   ;;;; pomidor
   `(pomidor-break-face ((,class (:foreground ,primary-alt-other))))
   `(pomidor-overwork-face ((,class (:foreground ,danger-alt-other))))
   `(pomidor-skip-face ((,class (:foreground ,fg-alt :slant ,ibm-theme-slant))))
   `(pomidor-work-face ((,class (:foreground ,success-alt-other))))
   ;;;; powerline
   `(powerline-active0 ((,class (:background ,fg-inactive :foreground ,bg-inactive))))
   `(powerline-active1 ((,class (:background ,bg-active :foreground ,fg-active))))
   `(powerline-active2 ((,class (:background ,bg-alt :foreground ,fg-active))))
   `(powerline-inactive0 ((,class (:background ,bg-active :foreground ,fg-inactive))))
   `(powerline-inactive1 ((,class (:background ,bg-inactive :foreground ,fg-inactive))))
   `(powerline-inactive2 ((,class (:background ,bg-main :foreground ,fg-alt))))
   ;;;; powerline-evil
   `(powerline-evil-base-face ((,class (:background ,fg-main :foreground ,bg-main))))
   `(powerline-evil-emacs-face ((,class (:inherit ibm-theme-active-secondary))))
   `(powerline-evil-insert-face ((,class (:inherit ibm-theme-active-success))))
   `(powerline-evil-motion-face ((,class (:inherit ibm-theme-active-primary))))
   `(powerline-evil-normal-face ((,class (:background ,fg-alt :foreground ,bg-main))))
   `(powerline-evil-operator-face ((,class (:inherit ibm-theme-active-warning))))
   `(powerline-evil-replace-face ((,class (:inherit ibm-theme-active-danger))))
   `(powerline-evil-visual-face ((,class (:inherit ibm-theme-active-info))))
   ;;;; proced
   `(proced-mark ((,class (:foreground ,primary-alt :weight bold))))
   `(proced-marked ((,class (:background ,bg-mark-other :foreground ,fg-mark-other :weight bold))))
   `(proced-sort-header ((,class (:foreground ,fg-special-calm :weight bold :underline t))))
   ;;;; prodigy
   `(prodigy-success-face ((,class (:foreground ,success))))
   `(prodigy-danger-face ((,class (:foreground ,danger))))
   `(prodigy-warning-face ((,class (:foreground ,warning))))
   ;;;; rainbow-blocks
   `(rainbow-blocks-depth-1-face ((,class (:foreground ,secondary-alt-other))))
   `(rainbow-blocks-depth-2-face ((,class (:foreground ,primary))))
   `(rainbow-blocks-depth-3-face ((,class (:foreground ,secondary-alt))))
   `(rainbow-blocks-depth-4-face ((,class (:foreground ,success))))
   `(rainbow-blocks-depth-5-face ((,class (:foreground ,secondary))))
   `(rainbow-blocks-depth-6-face ((,class (:foreground ,info))))
   `(rainbow-blocks-depth-7-face ((,class (:foreground ,warning))))
   `(rainbow-blocks-depth-8-face ((,class (:foreground ,info-alt))))
   `(rainbow-blocks-depth-9-face ((,class (:foreground ,danger-alt))))
   `(rainbow-blocks-unmatched-face ((,class (:foreground ,danger))))
   ;;;; rainbow-identifiers
   `(rainbow-identifiers-identifier-1 ((,class (:foreground ,success-alt-other))))
   `(rainbow-identifiers-identifier-2 ((,class (:foreground ,secondary-alt-other))))
   `(rainbow-identifiers-identifier-3 ((,class (:foreground ,info-alt-other))))
   `(rainbow-identifiers-identifier-4 ((,class (:foreground ,warning-alt-other))))
   `(rainbow-identifiers-identifier-5 ((,class (:foreground ,primary-alt-other))))
   `(rainbow-identifiers-identifier-6 ((,class (:foreground ,success-alt))))
   `(rainbow-identifiers-identifier-7 ((,class (:foreground ,secondary-alt))))
   `(rainbow-identifiers-identifier-8 ((,class (:foreground ,info-alt))))
   `(rainbow-identifiers-identifier-9 ((,class (:foreground ,warning-alt))))
   `(rainbow-identifiers-identifier-10 ((,class (:foreground ,success))))
   `(rainbow-identifiers-identifier-11 ((,class (:foreground ,secondary))))
   `(rainbow-identifiers-identifier-12 ((,class (:foreground ,info))))
   `(rainbow-identifiers-identifier-13 ((,class (:foreground ,warning))))
   `(rainbow-identifiers-identifier-14 ((,class (:foreground ,primary-alt))))
   `(rainbow-identifiers-identifier-15 ((,class (:foreground ,danger-alt))))
   ;;;; rainbow-delimiters
   `(rainbow-delimiters-base-face-error ((,class (:foreground ,danger))))
   `(rainbow-delimiters-base-face ((,class (:foreground ,fg-main))))
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,success-alt-other))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,secondary-alt-other))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,info-alt-other))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,warning-alt-other))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,primary-alt-other))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,success-alt))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,secondary-alt))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,info-alt))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,warning-alt))))
   `(rainbow-delimiters-mismatched-face ((,class (:foreground ,danger-alt :weight bold))))
   `(rainbow-delimiters-unmatched-face ((,class (:foreground ,danger :weight bold))))
   ;;;; rcirc
   `(rcirc-bright-nick ((,class (:foreground ,secondary-alt :weight bold))))
   `(rcirc-dim-nick ((,class (:foreground ,fg-alt))))
   `(rcirc-my-nick ((,class (:foreground ,secondary :weight bold))))
   `(rcirc-nick-in-message ((,class (:foreground ,secondary-alt-other))))
   `(rcirc-nick-in-message-full-line ((,class (:foreground ,fg-special-mild :weight bold))))
   `(rcirc-other-nick ((,class (:foreground ,fg-special-cold :weight bold))))
   `(rcirc-prompt ((,class (:foreground ,info-alt-other :weight bold))))
   `(rcirc-server ((,class (:foreground ,fg-unfocused))))
   `(rcirc-timestamp ((,class (:foreground ,primary-nuanced))))
   `(rcirc-url ((,class (:foreground ,primary :underline t))))
   ;;;; regexp-builder (re-builder)
   `(reb-match-0 ((,class (:inherit ibm-theme-intense-primary))))
   `(reb-match-1 ((,class (:inherit ibm-theme-intense-secondary))))
   `(reb-match-2 ((,class (:inherit ibm-theme-intense-success))))
   `(reb-match-3 ((,class (:inherit ibm-theme-intense-danger))))
   `(reb-regexp-grouping-backslash ((,class (:foreground ,fg-escape-char-backslash :weight bold))))
   `(reb-regexp-grouping-construct ((,class (:foreground ,fg-escape-char-construct :weight bold))))
   ;;;; rg (rg.el)
   `(rg-column-number-face ((,class (:foreground ,secondary-alt-other))))
   `(rg-context-face ((,class (:foreground ,fg-unfocused))))
   `(rg-error-face ((,class (:foreground ,danger :weight bold))))
   `(rg-file-tag-face ((,class (:foreground ,fg-special-cold))))
   `(rg-filename-face ((,class (:foreground ,fg-special-cold :weight bold))))
   `(rg-line-number-face ((,class (:foreground ,fg-special-warm))))
   `(rg-literal-face ((,class (:foreground ,primary-alt))))
   `(rg-match-face ((,class (:inherit ibm-theme-special-calm))))
   `(rg-regexp-face ((,class (:foreground ,secondary-active))))
   `(rg-toggle-off-face ((,class (:foreground ,fg-inactive :weight bold))))
   `(rg-toggle-on-face ((,class (:foreground ,info-active :weight bold))))
   `(rg-warning-face ((,class (:foreground ,warning :weight bold))))
   ;;;; ripgrep
   `(ripgrep-context-face ((,class (:foreground ,fg-unfocused))))
   `(ripgrep-error-face ((,class (:foreground ,danger :weight bold))))
   `(ripgrep-hit-face ((,class (:foreground ,info))))
   `(ripgrep-match-face ((,class (:inherit ibm-theme-special-calm))))
   ;;;; rmail
   `(rmail-header-name ((,class (:foreground ,info-alt-other))))
   `(rmail-highlight ((,class (:foreground ,secondary-alt :weight bold))))
   ;;;; ruler-mode
   `(ruler-mode-column-number ((,class (:inherit ruler-mode-default :foreground ,fg-main :weight bold))))
   `(ruler-mode-comment-column ((,class (:inherit ruler-mode-default :foreground ,danger-active))))
   `(ruler-mode-current-column ((,class (:inherit ruler-mode-default :foreground ,info-active :box t))))
   `(ruler-mode-default ((,class (:background ,bg-inactive :foreground ,fg-inactive))))
   `(ruler-mode-fill-column ((,class (:inherit ruler-mode-default :foreground ,success-active))))
   `(ruler-mode-fringes ((,class (:inherit ruler-mode-default :foreground ,primary-active))))
   `(ruler-mode-goal-column ((,class (:inherit ruler-mode-default :foreground ,secondary-active))))
   `(ruler-mode-margins ((,class (:inherit ruler-mode-default :foreground ,bg-main))))
   `(ruler-mode-pad ((,class (:background ,bg-active :foreground ,fg-inactive))))
   `(ruler-mode-tab-stop ((,class (:inherit ruler-mode-default :foreground ,warning-active))))
   ;;;; sallet
   `(sallet-buffer-compressed ((,class (:foreground ,warning-nuanced :slant italic))))
   `(sallet-buffer-default-directory ((,class (:foreground ,info-nuanced))))
   `(sallet-buffer-directory ((,class (:foreground ,primary-nuanced))))
   `(sallet-buffer-help ((,class (:foreground ,fg-special-cold))))
   `(sallet-buffer-modified ((,class (:foreground ,warning-alt-other :slant italic))))
   `(sallet-buffer-ordinary ((,class (:foreground ,fg-main))))
   `(sallet-buffer-read-only ((,class (:foreground ,warning-alt))))
   `(sallet-buffer-size ((,class (:foreground ,fg-special-calm))))
   `(sallet-buffer-special ((,class (:foreground ,secondary-alt-other))))
   `(sallet-flx-match ((,class (:inherit ibm-theme-refine-info))))
   `(sallet-recentf-buffer-name ((,class (:foreground ,primary-nuanced))))
   `(sallet-recentf-file-path ((,class (:foreground ,fg-special-mild))))
   `(sallet-regexp-match ((,class (:inherit ibm-theme-refine-secondary))))
   `(sallet-source-header ((,class (:foreground ,danger-alt :weight bold
                                                ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)))))
   `(sallet-substring-match ((,class (:inherit ibm-theme-refine-primary))))
   ;;;; selectrum
   `(selectrum-current-candidate ((,class (:inherit ibm-theme-intense-info))))
   `(selectrum-primary-highlight ((,class (:foreground ,secondary-alt :weight bold))))
   `(selectrum-secondary-highlight ((,class (:foreground ,primary-alt-other :weight bold))))
   ;;;; sesman
   `(sesman-browser-button-face ((,class (:foreground ,primary-alt-other :underline t))))
   `(sesman-browser-highligh-face ((,class (:inherit ibm-theme-subtle-primary))))
   `(sesman-buffer-face ((,class (:foreground ,secondary))))
   `(sesman-directory-face ((,class (:foreground ,primary :weight bold))))
   `(sesman-project-face ((,class (:foreground ,secondary-alt-other :weight bold))))
   ;;;; shell-script-mode
   `(sh-heredoc ((,class (:foreground ,primary-alt))))
   `(sh-quoted-exec ((,class (:foreground ,secondary-alt :weight ,ibm-theme-bold))))
   ;;;; show-paren-mode
   `(show-paren-match ((,class (:background ,bg-paren-match :foreground ,fg-main))))
   `(show-paren-match-expression ((,class (:inherit ibm-theme-special-calm))))
   `(show-paren-mismatch ((,class (:inherit ibm-theme-intense-danger))))
   ;;;; side-notes
   `(side-notes ((,class (:background ,bg-dim :foreground ,fg-dim))))
   ;;;; skewer-mode
   `(skewer-error-face ((,class (:foreground ,danger :underline t))))
   ;;;; smart-mode-line
   `(sml/charging ((,class (:foreground ,success-active))))
   `(sml/discharging ((,class (:foreground ,danger-active))))
   `(sml/filename ((,class (:foreground ,primary-active :weight bold))))
   `(sml/folder ((,class (:foreground ,fg-active))))
   `(sml/git ((,class (:foreground ,success-active :weight bold))))
   `(sml/global ((,class (:foreground ,fg-active))))
   `(sml/line-number ((,class (:inherit sml/global))))
   `(sml/minor-modes ((,class (:inherit sml/global))))
   `(sml/modes ((,class (:foreground ,fg-active :weight bold))))
   `(sml/modified ((,class (:foreground ,secondary-active :weight bold))))
   `(sml/mule-info ((,class (:inherit sml/global))))
   `(sml/name-filling ((,class (:foreground ,warning-active))))
   `(sml/not-modified ((,class (:inherit sml/global))))
   `(sml/numbers-separator ((,class (:inherit sml/global))))
   `(sml/outside-modified ((,class (:inherit ibm-theme-intense-danger))))
   `(sml/position-percentage ((,class (:inherit sml/global))))
   `(sml/prefix ((,class (:foreground ,success-active))))
   `(sml/process ((,class (:inherit sml/prefix))))
   `(sml/projectile ((,class (:inherit sml/git))))
   `(sml/read-only ((,class (:foreground ,info-active :weight bold))))
   `(sml/remote ((,class (:inherit sml/global))))
   `(sml/sudo ((,class (:inherit ibm-theme-subtle-danger))))
   `(sml/time ((,class (:inherit sml/global))))
   `(sml/vc ((,class (:inherit sml/git))))
   `(sml/vc-edited ((,class (:foreground ,warning-active :weight bold))))
   ;;;; smartparens
   `(sp-pair-overlay-face ((,class (:inherit ibm-theme-special-warm))))
   `(sp-show-pair-enclosing ((,class (:inherit ibm-theme-special-mild))))
   `(sp-show-pair-match-face ((,class (:background ,bg-paren-match :foreground ,fg-main))))
   `(sp-show-pair-mismatch-face ((,class (:inherit ibm-theme-intense-danger))))
   `(sp-wrap-overlay-closing-pair ((,class (:inherit sp-pair-overlay-face))))
   `(sp-wrap-overlay-face ((,class (:inherit sp-pair-overlay-face))))
   `(sp-wrap-overlay-opening-pair ((,class (:inherit sp-pair-overlay-face))))
   `(sp-wrap-tag-overlay-face ((,class (:inherit sp-pair-overlay-face))))
   ;;;; smerge
   `(smerge-base ((,class ,(ibm-dark-theme-diffs
                            bg-main warning
                            bg-diff-focus-changed fg-diff-focus-changed))))
   `(smerge-lower ((,class ,(ibm-dark-theme-diffs
                             bg-main success
                             bg-diff-focus-added fg-diff-focus-added))))
   `(smerge-markers ((,class (:background ,bg-diff-neutral-2 :foreground ,fg-diff-neutral-2))))
   `(smerge-refined-added ((,class ,(ibm-dark-theme-diffs
                                     bg-diff-added fg-diff-added
                                     bg-diff-refine-added fg-diff-refine-added))))
   `(smerge-refined-changed ((,class nil)))
   `(smerge-refined-removed ((,class ,(ibm-dark-theme-diffs
                                       bg-diff-removed fg-diff-removed
                                       bg-diff-refine-removed fg-diff-refine-removed))))
   `(smerge-upper ((,class ,(ibm-dark-theme-diffs
                             bg-main danger
                             bg-diff-focus-removed fg-diff-focus-removed))))
   ;;;; speedbar
   `(speedbar-button-face ((,class (:inherit link))))
   `(speedbar-directory-face ((,class (:foreground ,primary :weight bold))))
   `(speedbar-file-face ((,class (:foreground ,fg-main))))
   `(speedbar-highlight-face ((,class (:inherit ibm-theme-subtle-primary))))
   `(speedbar-selected-face ((,class (:foreground ,info :weight bold))))
   `(speedbar-separator-face ((,class (:inherit ibm-theme-intense-neutral))))
   `(speedbar-tag-face ((,class (:foreground ,warning-alt-other))))
   ;;;; spell-fu
   `(spell-fu-incorrect-face
     ((,(append '((supports :underline (:style wave))) class)
       (:foreground ,fg-lang-error :underline (:style wave)))
      (,class (:foreground ,fg-lang-error :underline t))))
   ;;;; stripes
   `(stripes ((,class (:background ,bg-alt))))
   ;;;; success
   `(suggest-heading ((,class (:foreground ,warning-alt-other :weight bold))))
   ;;;; switch-window
   `(switch-window-background ((,class (:background ,bg-dim))))
   `(switch-window-label ((,class (:height 3.0 :foreground ,primary-intense))))
   ;;;; swiper
   `(swiper-background-match-face-1 ((,class (:inherit ibm-theme-subtle-neutral))))
   `(swiper-background-match-face-2 ((,class (:inherit ibm-theme-subtle-info))))
   `(swiper-background-match-face-3 ((,class (:inherit ibm-theme-subtle-secondary))))
   `(swiper-background-match-face-4 ((,class (:inherit ibm-theme-subtle-success))))
   `(swiper-line-face ((,class (,@(and (>= emacs-major-version 27) '(:extend t))
                                :inherit ibm-theme-special-cold))))
   `(swiper-match-face-1 ((,class (:inherit swiper-line-face))))
   `(swiper-match-face-2 ((,class (:inherit swiper-line-face))))
   `(swiper-match-face-3 ((,class (:inherit swiper-line-face))))
   `(swiper-match-face-4 ((,class (:inherit swiper-line-face))))
   ;;;; swoop
   `(swoop-face-header-format-line ((,class (:foreground ,danger-alt :weight bold
                                                         ,@(ibm-dark-theme-scale ibm-dark-theme-scale-3)))))
   `(swoop-face-line-buffer-name ((,class (:foreground ,primary-alt :weight bold
                                                       ,@(ibm-dark-theme-scale ibm-dark-theme-scale-4)))))
   `(swoop-face-line-number ((,class (:foreground ,fg-special-warm))))
   `(swoop-face-target-line ((,class (:inherit ibm-theme-intense-primary
                                               ,@(and (>= emacs-major-version 27) '(:extend t))))))
   `(swoop-face-target-words ((,class (:inherit ibm-theme-refine-info))))
   ;;;; sx
   `(sx-inbox-item-type ((,class (:foreground ,secondary-alt-other))))
   `(sx-inbox-item-type-unread ((,class (:inherit sx-inbox-item-type :weight bold))))
   `(sx-question-list-answers ((,class (:foreground ,success))))
   `(sx-question-list-answers-accepted ((,class (:box t :foreground ,success))))
   `(sx-question-list-bounty ((,class (:background ,bg-alt :foreground ,warning :weight bold))))
   `(sx-question-list-date ((,class (:foreground ,fg-special-cold))))
   `(sx-question-list-favorite ((,class (:foreground ,fg-special-warm :weight bold))))
   `(sx-question-list-parent ((,class (:foreground ,fg-main))))
   `(sx-question-list-read-question ((,class (:foreground ,fg-alt))))
   `(sx-question-list-score ((,class (:foreground ,fg-special-mild))))
   `(sx-question-list-score-upvoted ((,class (:inherit sx-question-list-score :weight bold))))
   `(sx-question-list-unread-question ((,class (:foreground ,fg-main :weight bold))))
   `(sx-question-mode-accepted ((,class (:height 1.3 :foreground ,success :weight bold))))
   `(sx-question-mode-closed ((,class (:box (:line-width 2 :color nil) :inherit ibm-theme-active-warning))))
   `(sx-question-mode-closed-reason ((,class (:box (:line-width 2 :color nil) :foreground ,fg-main))))
   `(sx-question-mode-content-face ((,class (:background ,bg-dim))))
   `(sx-question-mode-date ((,class (:foreground ,primary))))
   `(sx-question-mode-header ((,class (:foreground ,info :weight bold))))
   `(sx-question-mode-kbd-tag ((,class (:height 0.9 :box (:line-width 3 :color ,fg-main :style released-button) :foreground ,fg-main :weight bold))))
   `(sx-question-mode-score ((,class (:foreground ,fg-dim))))
   `(sx-question-mode-score-downvoted ((,class (:foreground ,warning))))
   `(sx-question-mode-score-upvoted ((,class (:foreground ,secondary :weight bold))))
   `(sx-question-mode-title ((,class (:foreground ,fg-main :weight bold))))
   `(sx-question-mode-title-comments ((,class (:foreground ,fg-alt :weight bold))))
   `(sx-tag ((,class (:foreground ,secondary-alt))))
   `(sx-user-name ((,class (:foreground ,primary-alt))))
   `(sx-user-reputation ((,class (:foreground ,fg-alt))))
   ;;;; symbol-overlay
   `(symbol-overlay-default-face ((,class (:inherit ibm-theme-refine-primary))))
   `(symbol-overlay-face-1 ((,class (:inherit ibm-theme-intense-primary))))
   `(symbol-overlay-face-2 ((,class (:inherit ibm-theme-refine-secondary))))
   `(symbol-overlay-face-3 ((,class (:inherit ibm-theme-intense-warning))))
   `(symbol-overlay-face-4 ((,class (:inherit ibm-theme-intense-secondary))))
   `(symbol-overlay-face-5 ((,class (:inherit ibm-theme-intense-danger))))
   `(symbol-overlay-face-6 ((,class (:inherit ibm-theme-refine-danger))))
   `(symbol-overlay-face-7 ((,class (:inherit ibm-theme-intense-info))))
   `(symbol-overlay-face-8 ((,class (:inherit ibm-theme-refine-info))))
   ;;;; syslog-mode
   `(syslog-debug ((,class (:foreground ,info-alt-other :weight bold))))
   `(syslog-error ((,class (:foreground ,danger :weight bold))))
   `(syslog-file ((,class (:foreground ,fg-special-cold :weight bold))))
   `(syslog-hide ((,class (:background ,bg-main :foreground ,fg-main))))
   `(syslog-hour ((,class (:foreground ,secondary-alt-other :weight bold))))
   `(syslog-info ((,class (:foreground ,primary-alt-other :weight bold))))
   `(syslog-ip ((,class (:foreground ,fg-special-mild :weight bold :underline t))))
   `(syslog-su ((,class (:foreground ,danger-alt :weight bold))))
   `(syslog-warn ((,class (:foreground ,warning :weight bold))))
   ;;;; trashed
   `(trashed-deleted ((,class (:background ,bg-mark-del :foreground ,fg-mark-del :weight bold))))
   `(trashed-directory ((,class (:foreground ,primary))))
   `(trashed-mark ((,class (:foreground ,primary-alt :weight bold))))
   `(trashed-marked ((,class (:background ,bg-mark-other :foreground ,fg-mark-other :weight bold))))
   `(trashed-restored ((,class (:background ,bg-mark :foreground ,fg-mark :weight bold))))
   `(trashed-symlink ((,class (:foreground ,primary-alt :underline t))))
   ;;;; telephone-line
   `(telephone-line-accent-active ((,class (:background ,fg-inactive :foreground ,bg-inactive))))
   `(telephone-line-accent-inactive ((,class (:background ,bg-active :foreground ,fg-active))))
   `(telephone-line-error ((,class (:foreground ,danger-active :weight bold))))
   `(telephone-line-evil ((,class (:foreground ,fg-main))))
   `(telephone-line-evil-emacs ((,class (:inherit telephone-line-evil :background ,secondary-intense-bg))))
   `(telephone-line-evil-insert ((,class (:inherit telephone-line-evil :background ,success-intense-bg))))
   `(telephone-line-evil-motion ((,class (:inherit telephone-line-evil :background ,warning-intense-bg))))
   `(telephone-line-evil-normal ((,class (:inherit telephone-line-evil :background ,bg-alt))))
   `(telephone-line-evil-operator ((,class (:inherit telephone-line-evil :background ,warning-subtle-bg))))
   `(telephone-line-evil-replace ((,class (:inherit telephone-line-evil :background ,danger-intense-bg))))
   `(telephone-line-evil-visual ((,class (:inherit telephone-line-evil :background ,info-intense-bg))))
   `(telephone-line-projectile ((,class (:foreground ,info-active))))
   `(telephone-line-unimportant ((,class (:foreground ,fg-inactive))))
   `(telephone-line-warning ((,class (:foreground ,warning-active :weight bold))))
   ;;;; term
   `(term ((,class (:background ,bg-main :foreground ,fg-main))))
   `(term-bold ((,class (:weight bold))))
   `(term-color-primary ((,class (:background ,primary :foreground ,primary))))
   `(term-color-info ((,class (:background ,info :foreground ,info))))
   `(term-color-success ((,class (:background ,success :foreground ,success))))
   `(term-color-secondary ((,class (:background ,secondary :foreground ,secondary))))
   `(term-color-danger ((,class (:background ,danger :foreground ,danger))))
   `(term-color-warning ((,class (:background ,warning :foreground ,warning))))
   `(term-underline ((,class (:underline t))))
   ;;;; tomatinho
   `(tomatinho-ok-face ((,class (:foreground ,primary-intense))))
   `(tomatinho-pause-face ((,class (:foreground ,warning-intense))))
   `(tomatinho-reset-face ((,class (:foreground ,fg-alt))))
   ;;;; transient
   `(transient-active-infix ((,class (:inherit ibm-theme-special-mild))))
   `(transient-argument ((,class (:foreground ,success :weight bold))))
   `(transient-disabled-suffix ((,class (:inherit ibm-theme-intense-danger))))
   `(transient-enabled-suffix ((,class (:inherit ibm-theme-intense-success))))
   `(transient-heading ((,class (:foreground ,fg-special-warm :weight bold))))
   `(transient-inactive-argument ((,class (:foreground ,fg-alt))))
   `(transient-inactive-value ((,class (:foreground ,fg-alt))))
   `(transient-key ((,class (:foreground ,secondary-intense))))
   `(transient-mismatched-key ((,class (:underline t))))
   `(transient-nonstandard-key ((,class (:underline t))))
   `(transient-unreachable ((,class (:foreground ,fg-inactive))))
   `(transient-unreachable-key ((,class (:foreground ,fg-inactive))))
   `(transient-value ((,class (:foreground ,primary))))
   ;;;; treemacs
   `(treemacs-directory-collapsed-face ((,class (:foreground ,secondary-alt))))
   `(treemacs-directory-face ((,class (:inherit dired-directory))))
   `(treemacs-file-face ((,class (:foreground ,fg-main))))
   `(treemacs-fringe-indicator-face ((,class (:foreground ,fg-main))))
   `(treemacs-git-added-face ((,class (:foreground ,success-intense))))
   `(treemacs-git-conflict-face ((,class (:inherit ibm-theme-intense-danger :weight bold))))
   `(treemacs-git-ignored-face ((,class (:foreground ,fg-alt))))
   `(treemacs-git-modified-face ((,class (:foreground ,warning-alt-other))))
   `(treemacs-git-renamed-face ((,class (:foreground ,info-alt-other))))
   `(treemacs-git-unmodified-face ((,class (:foreground ,fg-main))))
   `(treemacs-git-untracked-face ((,class (:foreground ,danger-alt-other))))
   `(treemacs-help-column-face ((,class (:foreground ,secondary-alt-other :weight ,ibm-theme-bold :underline t))))
   `(treemacs-help-title-face ((,class (:foreground ,primary-alt-other))))
   `(treemacs-on-failure-pulse-face ((,class (:inherit ibm-theme-intense-danger))))
   `(treemacs-on-success-pulse-face ((,class (:inherit ibm-theme-intense-success))))
   `(treemacs-root-face ((,class (:foreground ,primary-alt-other :height 1.2 :weight bold :underline t))))
   `(treemacs-root-remote-disconnected-face ((,class (:inherit treemacs-root-remote-face :foreground ,warning))))
   `(treemacs-root-remote-face ((,class (:inherit treemacs-root-face :foreground ,secondary))))
   `(treemacs-root-remote-unreadable-face ((,class (:inherit treemacs-root-unreadable-face))))
   `(treemacs-root-unreadable-face ((,class (:inherit treemacs-root-face :strike-through t))))
   `(treemacs-tags-face ((,class (:foreground ,primary-alt))))
   `(treemacs-tags-face ((,class (:foreground ,secondary-alt))))
   ;;;; tuareg
   `(caml-types-def-face ((,class (:inherit ibm-theme-subtle-danger))))
   `(caml-types-expr-face ((,class (:inherit ibm-theme-subtle-success))))
   `(caml-types-occ-face ((,class (:inherit ibm-theme-subtle-success))))
   `(caml-types-scope-face ((,class (:inherit ibm-theme-subtle-primary))))
   `(caml-types-typed-face ((,class (:inherit ibm-theme-subtle-secondary))))
   `(tuareg-font-double-semicolon-face ((,class (:foreground ,danger-alt))))
   `(tuareg-font-lock-attribute-face ((,class (:foreground ,secondary))))
   `(tuareg-font-lock-constructor-face ((,class (:foreground ,fg-main))))
   `(tuareg-font-lock-error-face ((,class (:inherit ibm-theme-intense-danger :weight bold))))
   `(tuareg-font-lock-extension-node-face ((,class (:background ,bg-alt :foreground ,secondary))))
   `(tuareg-font-lock-governing-face ((,class (:foreground ,fg-main :weight bold))))
   `(tuareg-font-lock-infix-extension-node-face ((,class (:foreground ,secondary))))
   `(tuareg-font-lock-interactive-directive-face ((,class (:foreground ,fg-special-cold))))
   `(tuareg-font-lock-interactive-error-face ((,class (:foreground ,danger :weight bold))))
   `(tuareg-font-lock-interactive-output-face ((,class (:foreground ,primary-alt-other))))
   `(tuareg-font-lock-label-face ((,class (:foreground ,info-alt-other))))
   `(tuareg-font-lock-line-number-face ((,class (:foreground ,fg-special-warm))))
   `(tuareg-font-lock-module-face ((,class (:foreground ,secondary-alt))))
   `(tuareg-font-lock-multistage-face ((,class (:background ,bg-alt :foreground ,primary :weight bold))))
   `(tuareg-font-lock-operator-face ((,class (:foreground ,danger-alt))))
   `(tuareg-opam-error-face ((,class (:foreground ,danger :weight bold))))
   `(tuareg-opam-pkg-variable-name-face ((,class (:foreground ,info :slant ,ibm-theme-slant))))
   ;;;; undo-tree
   `(undo-tree-visualizer-active-branch-face ((,class (:foreground ,fg-main :weight bold))))
   `(undo-tree-visualizer-current-face ((,class (:foreground ,primary-intense))))
   `(undo-tree-visualizer-default-face ((,class (:foreground ,fg-alt))))
   `(undo-tree-visualizer-register-face ((,class (:foreground ,secondary-intense))))
   `(undo-tree-visualizer-unmodified-face ((,class (:foreground ,success-intense))))
   ;;;; vc
   `(vc-conflict-state ((,class (:foreground ,danger-active :weight ,ibm-theme-bold))))
   `(vc-edited-state ((,class (:foreground ,fg-special-warm))))
   `(vc-locally-added-state ((,class (:foreground ,info-active))))
   `(vc-locked-state ((,class (:foreground ,secondary-active :weight ,ibm-theme-bold))))
   `(vc-missing-state ((,class (:foreground ,warning-active :weight ,ibm-theme-bold))))
   `(vc-needs-update-state ((,class (:foreground ,fg-special-mild :weight ,ibm-theme-bold))))
   `(vc-removed-state ((,class (:foreground ,danger-active))))
   `(vc-state-base ((,class (:foreground ,fg-active))))
   `(vc-up-to-date-state ((,class (:foreground ,fg-special-cold))))
   ;;;; vdiff
   `(vdiff-addition-face ((,class ,(ibm-dark-theme-diffs
                                    bg-main success
                                    bg-diff-focus-added fg-diff-focus-added))))
   `(vdiff-change-face ((,class ,(ibm-dark-theme-diffs
                                  bg-main warning
                                  bg-diff-focus-changed fg-diff-focus-changed))))
   `(vdiff-closed-fold-face ((,class (:background ,bg-diff-neutral-1 :foreground ,fg-diff-neutral-1))))
   `(vdiff-refine-added ((,class ,(ibm-dark-theme-diffs
                                   bg-diff-added fg-diff-added
                                   bg-diff-refine-added fg-diff-refine-added))))
   `(vdiff-refine-changed ((,class ,(ibm-dark-theme-diffs
                                     bg-diff-changed fg-diff-changed
                                     bg-diff-refine-changed fg-diff-refine-changed))))
   `(vdiff-subtraction-face ((,class ,(ibm-dark-theme-diffs
                                       bg-main danger
                                       bg-diff-focus-removed fg-diff-focus-removed))))
   `(vdiff-target-face ((,class (:inherit ibm-theme-intense-primary))))
   ;;;; vimish-fold
   `(vimish-fold-fringe ((,class (:foreground ,info-active))))
   `(vimish-fold-mouse-face ((,class (:inherit ibm-theme-intense-primary))))
   `(vimish-fold-overlay ((,class (:background ,bg-alt :foreground ,fg-special-cold))))
   ;;;; visible-mark
   `(visible-mark-active ((,class (:background ,primary-intense-bg))))
   `(visible-mark-face1 ((,class (:background ,info-intense-bg))))
   `(visible-mark-face2 ((,class (:background ,warning-intense-bg))))
   `(visible-mark-forward-face1 ((,class (:background ,secondary-intense-bg))))
   `(visible-mark-forward-face2 ((,class (:background ,success-intense-bg))))
   ;;;; visual-regexp
   `(vr/group-0 ((,class (:inherit ibm-theme-intense-primary))))
   `(vr/group-1 ((,class (:inherit ibm-theme-intense-secondary))))
   `(vr/group-2 ((,class (:inherit ibm-theme-intense-success))))
   `(vr/match-0 ((,class (:inherit ibm-theme-refine-warning))))
   `(vr/match-1 ((,class (:inherit ibm-theme-refine-warning))))
   `(vr/match-separator-face ((,class (:inherit ibm-theme-intense-neutral :weight bold))))
   ;;;; volatile-highlights
   `(vhl/default-face ((,class (,@(and (>= emacs-major-version 27) '(:extend t))
                                :background ,bg-alt :foreground ,primary-nuanced))))
   ;;;; vterm
   `(vterm-color-black ((,class (:background "black" :foreground "black"))))
   `(vterm-color-primary ((,class (:background ,primary :foreground ,primary))))
   `(vterm-color-info ((,class (:background ,info :foreground ,info))))
   `(vterm-color-default ((,class (:background ,bg-main :foreground ,fg-main))))
   `(vterm-color-success ((,class (:background ,success :foreground ,success))))
   `(vterm-color-inverse-video ((,class (:background ,bg-main :inverse-video t))))
   `(vterm-color-secondary ((,class (:background ,secondary :foreground ,secondary))))
   `(vterm-color-danger ((,class (:background ,danger :foreground ,danger))))
   `(vterm-color-underline ((,class (:foreground ,fg-special-warm :underline t))))
   `(vterm-color-white ((,class (:background "white" :foreground "white"))))
   `(vterm-color-warning ((,class (:background ,warning :foreground ,warning))))
   ;;;; wcheck-mode
   `(wcheck-default-face ((,class (:foreground ,danger :underline t))))
   ;;;; web-mode
   `(web-mode-annotation-face ((,class (:inherit web-mode-comment-face))))
   `(web-mode-annotation-html-face ((,class (:inherit web-mode-comment-face))))
   `(web-mode-annotation-tag-face ((,class (:inherit web-mode-comment-face :underline t))))
   `(web-mode-block-attr-name-face ((,class (:foreground ,primary))))
   `(web-mode-block-attr-value-face ((,class (:foreground ,info-alt-other))))
   `(web-mode-block-comment-face ((,class (:inherit web-mode-comment-face))))
   `(web-mode-block-control-face ((,class (:foreground ,secondary-alt :weight ,ibm-theme-bold))))
   `(web-mode-block-delimiter-face ((,class (:foreground ,fg-main))))
   `(web-mode-block-face ((,class (:background ,bg-dim))))
   `(web-mode-block-string-face ((,class (:inherit web-mode-string-face))))
   `(web-mode-bold-face ((,class (:weight bold))))
   `(web-mode-builtin-face ((,class (:foreground ,secondary-alt :weight ,ibm-theme-bold))))
   `(web-mode-comment-face ((,class (:foreground ,fg-alt :slant ,ibm-theme-slant))))
   `(web-mode-comment-keyword-face ((,class (:background ,bg-dim :foreground ,warning :weight bold))))
   `(web-mode-constant-face ((,class (:foreground ,primary-alt-other))))
   `(web-mode-css-at-rule-face ((,class (:foreground ,primary-alt-other))))
   `(web-mode-css-color-face ((,class (:foreground ,secondary-alt :weight ,ibm-theme-bold))))
   `(web-mode-css-comment-face ((,class (:inherit web-mode-comment-face))))
   `(web-mode-css-function-face ((,class (:foreground ,secondary-alt :weight ,ibm-theme-bold))))
   `(web-mode-css-priority-face ((,class (:foreground ,warning-alt :weight ,ibm-theme-bold))))
   `(web-mode-css-property-name-face ((,class (:foreground ,info))))
   `(web-mode-css-pseudo-class-face ((,class (:foreground ,info-alt-other))))
   `(web-mode-css-selector-face ((,class (:foreground ,secondary-alt-other :weight ,ibm-theme-bold))))
   `(web-mode-css-string-face ((,class (:inherit web-mode-string-face))))
   `(web-mode-css-variable-face ((,class (:foreground ,fg-special-warm))))
   `(web-mode-current-column-highlight-face ((,class (:background ,bg-alt))))
   `(web-mode-current-element-highlight-face ((,class (:inherit ibm-theme-special-mild))))
   `(web-mode-doctype-face ((,class (:foreground ,fg-special-cold :slant ,ibm-theme-slant))))
   `(web-mode-error-face ((,class (:inherit ibm-theme-intense-danger))))
   `(web-mode-filter-face ((,class (:foreground ,secondary))))
   `(web-mode-folded-face ((,class (:underline t))))
   `(web-mode-function-call-face ((,class (:foreground ,secondary))))
   `(web-mode-function-name-face ((,class (:foreground ,secondary))))
   `(web-mode-html-attr-custom-face ((,class (:foreground ,info))))
   `(web-mode-html-attr-engine-face ((,class (:foreground ,fg-main))))
   `(web-mode-html-attr-equal-face ((,class (:foreground ,fg-main))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,info))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,primary-alt-other))))
   `(web-mode-html-entity-face ((,class (:foreground ,warning-alt-other :slant ,ibm-theme-slant))))
   `(web-mode-html-tag-bracket-face ((,class (:foreground ,fg-dim))))
   `(web-mode-html-tag-custom-face ((,class (:foreground ,secondary))))
   `(web-mode-html-tag-face ((,class (:foreground ,secondary))))
   `(web-mode-html-tag-namespaced-face ((,class (:foreground ,secondary-alt :weight ,ibm-theme-bold))))
   `(web-mode-html-tag-unclosed-face ((,class (:foreground ,danger :underline t))))
   `(web-mode-inlay-face ((,class (:background ,bg-alt))))
   `(web-mode-italic-face ((,class (:slant italic))))
   `(web-mode-javascript-comment-face ((,class (:inherit web-mode-comment-face))))
   `(web-mode-javascript-string-face ((,class (:inherit web-mode-string-face))))
   `(web-mode-json-comment-face ((,class (:inherit web-mode-comment-face))))
   `(web-mode-json-context-face ((,class (:foreground ,secondary-alt))))
   `(web-mode-json-key-face ((,class (:foreground ,primary-nuanced))))
   `(web-mode-json-string-face ((,class (:inherit web-mode-string-face))))
   `(web-mode-jsx-depth-1-face ((,class (:background ,primary-intense-bg :foreground ,fg-main))))
   `(web-mode-jsx-depth-2-face ((,class (:background ,primary-subtle-bg :foreground ,fg-main))))
   `(web-mode-jsx-depth-3-face ((,class (:background ,bg-special-cold :foreground ,fg-special-cold))))
   `(web-mode-jsx-depth-4-face ((,class (:background ,bg-alt :foreground ,primary-refine-fg))))
   `(web-mode-jsx-depth-5-face ((,class (:background ,bg-alt :foreground ,primary-nuanced))))
   `(web-mode-keyword-face ((,class (:foreground ,secondary-alt-other :weight ,ibm-theme-bold))))
   `(web-mode-param-name-face ((,class (:foreground ,secondary))))
   `(web-mode-part-comment-face ((,class (:inherit web-mode-comment-face))))
   `(web-mode-part-face ((,class (:inherit web-mode-block-face))))
   `(web-mode-part-string-face ((,class (:inherit web-mode-string-face))))
   `(web-mode-preprocessor-face ((,class (:foreground ,secondary))))
   `(web-mode-script-face ((,class (:inherit web-mode-part-face))))
   `(web-mode-sql-keyword-face ((,class (:foreground ,warning :weight bold))))
   `(web-mode-string-face ((,class (:foreground ,primary-alt))))
   `(web-mode-style-face ((,class (:inherit web-mode-part-face))))
   `(web-mode-symbol-face ((,class (:foreground ,primary-alt-other))))
   `(web-mode-type-face ((,class (:foreground ,secondary-alt))))
   `(web-mode-underline-face ((,class (:underline t))))
   `(web-mode-variable-name-face ((,class (:foreground ,info))))
   `(web-mode-warning-face ((,class (:background ,bg-alt :foreground ,warning-alt-other :weight bold))))
   `(web-mode-whitespace-face ((,class (:background ,bg-whitespace :foreground ,fg-whitespace))))
   ;;;; wgrep
   `(wgrep-delete-face ((,class (:inherit ibm-theme-refine-warning))))
   `(wgrep-done-face ((,class (:inherit ibm-theme-refine-primary))))
   `(wgrep-face ((,class (:inherit ibm-theme-refine-success))))
   `(wgrep-file-face ((,class (:foreground ,fg-special-warm))))
   `(wgrep-reject-face ((,class (:inherit ibm-theme-intense-danger :weight bold))))
   ;;;; which-function-mode
   `(which-func ((,class (:foreground ,secondary-active))))
   ;;;; which-key
   `(which-key-command-description-face ((,class (:foreground ,info))))
   `(which-key-group-description-face ((,class (:foreground ,secondary-alt))))
   `(which-key-highlighted-command-face ((,class (:foreground ,info-alt :underline t))))
   `(which-key-key-face ((,class (:foreground ,primary-intense :weight bold))))
   `(which-key-local-map-description-face ((,class (:foreground ,fg-main))))
   `(which-key-note-face ((,class (:background ,bg-dim :foreground ,fg-special-mild))))
   `(which-key-separator-face ((,class (:foreground ,fg-alt))))
   `(which-key-special-key-face ((,class (:foreground ,warning-intense :weight bold))))
   ;;;; whitespace-mode
   `(whitespace-big-indent ((,class (:inherit ibm-theme-subtle-danger))))
   `(whitespace-empty ((,class (:inherit ibm-theme-intense-secondary))))
   `(whitespace-hspace ((,class (:background ,bg-whitespace :foreground ,fg-whitespace))))
   `(whitespace-indentation ((,class (:background ,bg-whitespace :foreground ,fg-whitespace))))
   `(whitespace-line ((,class (:inherit ibm-theme-special-warm))))
   `(whitespace-newline ((,class (:background ,bg-whitespace :foreground ,fg-whitespace))))
   `(whitespace-space ((,class (:background ,bg-whitespace :foreground ,fg-whitespace))))
   `(whitespace-space-after-tab ((,class (:inherit ibm-theme-subtle-secondary))))
   `(whitespace-space-before-tab ((,class (:inherit ibm-theme-subtle-info))))
   `(whitespace-tab ((,class (:background ,bg-whitespace :foreground ,fg-whitespace))))
   `(whitespace-trailing ((,class (:inherit ibm-theme-intense-danger))))
   ;;;; window-divider-mode
   `(window-divider ((,class (:foreground ,fg-window-divider-inner))))
   `(window-divider-first-pixel ((,class (:foreground ,fg-window-divider-outer))))
   `(window-divider-last-pixel ((,class (:foreground ,fg-window-divider-outer))))
   ;;;; winum
   `(winum-face ((,class (:foreground ,info-active :weight ,ibm-theme-bold))))
   ;;;; writegood-mode
   `(writegood-duplicates-face ((,class (:background ,bg-alt :foreground ,danger-alt :underline t))))
   `(writegood-passive-voice-face ((,class (:foreground ,warning-nuanced :underline (:color ,fg-lang-warning :style line)))))
   `(writegood-weasels-face ((,class (:foreground ,danger-nuanced :underline (:color ,fg-lang-error :style line)))))
   ;;;; woman
   `(woman-addition ((,class (:foreground ,secondary-alt-other))))
   `(woman-bold ((,class (:foreground ,secondary :weight bold))))
   `(woman-italic ((,class (:foreground ,info :slant italic))))
   `(woman-unknown ((,class (:foreground ,warning :slant italic))))
   ;;;; xah-elisp-mode
   `(xah-elisp-at-symbol ((,class (:foreground ,danger-alt :weight bold))))
   `(xah-elisp-cap-variable ((,class (:foreground ,danger-alt-other))))
   `(xah-elisp-command-face ((,class (:foreground ,info-alt-other))))
   `(xah-elisp-dollar-symbol ((,class (:foreground ,success))))
   ;;;; xref
   `(xref-file-header ((,class (:foreground ,fg-special-cold :weight bold))))
   `(xref-line-number ((,class (:foreground ,fg-alt))))
   `(xref-match ((,class (:inherit match))))
   ;;;; yaml-mode
   `(yaml-tab-face ((,class (:inherit ibm-theme-intense-danger))))
   ;;;; yasnippet
   `(yas-field-highlight-face ((,class (:background ,bg-alt :foreground ,fg-main))))
   ;;;; ztree
   `(ztreep-arrow-face ((,class (:foreground ,fg-inactive))))
   `(ztreep-diff-header-face ((,class (:height 1.2 :foreground ,fg-special-cold :weight bold))))
   `(ztreep-diff-header-small-face ((,class (:foreground ,fg-special-mild :weight bold))))
   `(ztreep-diff-model-add-face ((,class (:foreground ,success))))
   `(ztreep-diff-model-diff-face ((,class (:foreground ,danger))))
   `(ztreep-diff-model-ignored-face ((,class (:foreground ,fg-alt :strike-through t))))
   `(ztreep-diff-model-normal-face ((,class (:foreground ,fg-alt))))
   `(ztreep-expand-sign-face ((,class (:foreground ,primary))))
   `(ztreep-header-face ((,class (:height 1.2 :foreground ,fg-special-cold :weight bold))))
   `(ztreep-leaf-face ((,class (:foreground ,info))))
   `(ztreep-node-count-children-face ((,class (:foreground ,fg-special-warm))))
   `(ztreep-node-face ((,class (:foreground ,fg-main))))
   (when (>= emacs-major-version 27) ; EXPERIMENTAL this form is subject to review
     (custom-theme-set-faces
      'ibm-dark
      ;;;; tab-bar-mode
      `(tab-bar ((,class (:background ,bg-tab-bar :foreground ,fg-main))))
      `(tab-bar-tab ((,class (:box (:line-width 2 :color ,bg-tab-active)
                                   :background ,bg-tab-active :foreground ,fg-main :weight bold))))
      `(tab-bar-tab-inactive ((,class (:box (:line-width 2 :color ,bg-tab-inactive)
                                            :background ,bg-tab-inactive :foreground ,fg-dim))))
      ;;;; tab-line-mode
      `(tab-line ((,class (:height 0.95 :background ,bg-tab-bar :foreground ,fg-main))))
      `(tab-line-close-highlight ((,class (:foreground ,danger))))
      `(tab-line-highlight ((,class (:background ,primary-subtle-bg :foreground ,fg-dim))))
      `(tab-line-tab ((,class (:box (:line-width 2 :color ,bg-tab-active)
                                    :background ,bg-tab-active :foreground ,fg-main :weight bold))))
      `(tab-line-tab-current ((,class (:inherit tab-line-tab))))
      `(tab-line-tab-inactive ((,class (:box (:line-width 2 :color ,bg-tab-inactive)
                                             :background ,bg-tab-inactive :foreground ,fg-dim))))))
   ;;; Theme Variables
   (custom-theme-set-variables
    'ibm-dark
    ;;;; ansi-colors
    `(ansi-color-faces-vector [default bold shadow italic underline success warning error])
    `(ansi-color-names-vector [,bg-main ,danger ,success ,warning ,primary ,secondary ,info ,fg-main])
    ;;;; flymake fringe indicators
    `(flymake-error-bitmap '(flymake-double-exclamation-mark ibm-theme-fringe-danger))
    `(flymake-warning-bitmap '(exclamation-mark ibm-theme-fringe-warning))
    `(flymake-note-bitmap '(exclamation-mark ibm-theme-fringe-info))
    ;;;; ibuffer
    `(ibuffer-deletion-face 'dired-flagged)
    `(ibuffer-filter-group-name-face 'dired-mark)
    `(ibuffer-marked-face 'dired-marked)
    `(ibuffer-title-face 'dired-header)
    ;;;; hl-todo
    `(hl-todo-keyword-faces
      '(("HOLD" . ,warning-alt)
        ("TODO" . ,secondary)
        ("NEXT" . ,secondary-alt-other)
        ("THEM" . ,secondary-alt)
        ("PROG" . ,info)
        ("OKAY" . ,info-alt)
        ("DONT" . ,success-alt)
        ("FAIL" . ,danger)
        ("DONE" . ,success)
        ("NOTE" . ,warning-alt-other)
        ("KLUDGE" . ,warning)
        ("HACK" . ,warning)
        ("TEMP" . ,danger-nuanced)
        ("FIXME" . ,danger-alt-other)
        ("XXX+" . ,danger-alt)
        ("REVIEW" . ,info-alt-other)
        ("DEPRECATED" . ,info-nuanced)))
    ;;;;; vc-annotate (C-x v g)
    `(vc-annotate-background nil)
    `(vc-annotate-background-mode nil)
    `(vc-annotate-color-map
      '((20 . ,danger)
        (40 . ,secondary)
        (60 . ,secondary-alt)
        (80 . ,danger-alt)
        (100 . ,warning)
        (120 . ,warning-alt)
        (140 . ,fg-special-warm)
        (160 . ,fg-special-mild)
        (180 . ,success)
        (200 . ,success-alt)
        (220 . ,info-alt-other)
        (240 . ,info-alt)
        (260 . ,info)
        (280 . ,fg-special-cold)
        (300 . ,primary)
        (320 . ,primary-alt)
        (340 . ,primary-alt-other)
        (360 . ,secondary-alt-other)))
    `(vc-annotate-very-old-color nil)
    ;;;; xterm-color
    `(xterm-color-names [,bg-main ,danger ,success ,warning ,primary ,secondary ,info ,fg-alt])
    `(xterm-color-names-bright [,bg-alt ,danger-alt ,success-alt ,warning-alt ,primary-alt ,secondary-alt ,info-alt ,fg-main]))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'ibm-dark)

(provide 'ibm-dark-theme)

;;; ibm-dark-theme.el ends here

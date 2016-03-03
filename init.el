;; Set path to dependencies
;;
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))

;; Set up load path
;;
(add-to-list 'load-path settings-dir)
(add-to-list 'load-path site-lisp-dir)

;; Enable word wrapping in various modes
;;
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Delete a buffer's auto-save file when the buffer is saved
;;
(setq delete-auto-save-files t)

;; Always use font lock mode
;;
(global-font-lock-mode t)

;; Always use global revert mode
;;
(global-auto-revert-mode t)

;; Always use global highlight line mode
;;
(global-hl-line-mode t)

;; Use visible bell instead of a beep
;;
(setq visible-bell t)

;; Load abbrev file from config directory
;;
(setq abbrev-file-name
      "~/.emacs.d/abbrev_defs")

;; Automatically load abbrevs
;;
(quietly-read-abbrev-file)

;; Enable abbrev-mode
;;
(setq abbrev-mode t)

;; Use spaces to indentation
;;
(setq-default indent-tabs-mode nil)

;; Save place
;;
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))

;; IDO
;;
(require 'ido)
(ido-mode t)

;; Custom global key rebindings
;;
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key [end] 'end-of-line)
(global-set-key [home] 'my-home)
(global-set-key [\C-end] 'end-of-buffer)
(global-set-key [\C-home] 'beginning-of-buffer)
(global-set-key [f2] 'save-buffer)
(global-set-key [f3] 'find-file)
(global-set-key [\C-f3] 'find-file-at-point)
(global-set-key [\M-f3] 'ff-get-other-file)
(global-set-key [f4] 'kill-this-buffer)
(global-set-key [\C-f4] 'next-error)
(global-set-key [f5] 'compile)
(global-set-key [f6] 'other-window)
(global-set-key [\C-f6] 'other-frame)
(global-set-key [f7] 'isearch-forward)
(global-set-key [f8] 'replace-string)
(global-set-key [\C-f8] 'replace-regexp)
(global-set-key [f9] 'jump-to-register)
(global-set-key [\C-f9] 'point-to-register)
(global-set-key [f10] 'insert-register)
(global-set-key [\C-f10] 'copy-to-register)
(global-set-key [f11] 'goto-line)
(global-set-key [\C-f11] 'toggle-truncate-lines)
(global-set-key [\M-f11] 'whitespace-mode)
(global-set-key [f12] 'save-buffers-kill-emacs)
(global-set-key [delete] 'delete-char)
(global-set-key [\C-tab] 'other-window)
(global-set-key [\M-f8] 'ff-get-other-file)

(define-key global-map [(shift tab)] nil)
(define-key function-key-map [(shift tab)]  [?\M-\t])

;; Special home key operation
;;
(defun my-home ()
  (interactive)
  (let ((pos (save-excursion (back-to-indentation) (point))))
    (if (equal pos (point))
        (beginning-of-line)
      (back-to-indentation))))

;; Show path/filename in titlebar and icon popup text
;;
(setq frame-title-format "%b - Emacs")
(setq icon-title-format "%b - Emacs")

;; Fancy cursor colour
;;
(setq hcz-set-cursor-color-color "")
(setq hcz-set-cursor-color-buffer "")
(defun hcz-set-cursor-color-according-to-mode ()
  "change cursor color according to some minor modes."
  ;; set-cursor-color is somewhat costly, so we only call it when needed:
  (let ((color
         (if buffer-read-only "red"
           (if overwrite-mode "blue"
             "black"))))
    (unless (and
             (string= color hcz-set-cursor-color-color)
             (string= (buffer-name) hcz-set-cursor-color-buffer))
      (set-cursor-color (setq hcz-set-cursor-color-color color))
      (setq hcz-set-cursor-color-buffer (buffer-name)))))
(add-hook 'post-command-hook 'hcz-set-cursor-color-according-to-mode)

;; Enable narrow to page function
;;
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)

;; Disable toolbar
;;
(tool-bar-mode -1)

;; Delete trailing whitespace on save
;;
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; C-mode customisations
;;
;; C-mode customisations
;;
(add-hook 'c-mode-common-hook 'my-c-settings)

(defun my-c-settings ()
  (c-set-style "ellemtel")
  (setq c-basic-offset 3)
  (setq indent-tabs-mode nil)
  (c-set-offset 'inclass '+)
  (c-set-offset 'case-label 0)
  (c-set-offset 'arglist-cont-nonempty '(c-lineup-arglist))
  (setq require-final-newline nil)
  )

;; Make sure that header files are always loaded as C++
;;
(setq auto-mode-alist (cons '("\\.h$" . c++-mode) auto-mode-alist))

;; Setup Package
;;
(require 'setup-package)

;;----------------------------------------------------------------------
;; Configure packages here
;;
(setq package-enable-at-startup nil)

;; Color Theme support
;;
(require 'color-theme)

;; My custom colour theme.
;;
(defun color-theme-michaels-clarity ()
  "White on black color theme by Richard Wellum, created 2003-01-16."
  (interactive)
  (color-theme-install
   '(color-theme-clarity
     ((background-color . "black")
      (background-mode . dark)
      (border-color . "white")
      (cursor-color . "yellow")
      (foreground-color . "white")
      (mouse-color . "white"))
     ((CUA-mode-global-mark-cursor-color . "cyan")
      (CUA-mode-normal-cursor-color . "yellow")
      (CUA-mode-overwrite-cursor-color . "red")
      (CUA-mode-read-only-cursor-color . "green")
      (help-highlight-face . underline)
      (ibuffer-dired-buffer-face . font-lock-function-name-face)
      (ibuffer-help-buffer-face . font-lock-comment-face)
      (ibuffer-hidden-buffer-face . font-lock-warning-face)
      (ibuffer-occur-match-face . font-lock-warning-face)
      (ibuffer-read-only-buffer-face . font-lock-type-face)
      (ibuffer-special-buffer-face . font-lock-keyword-face)
      (ibuffer-title-face . font-lock-type-face)
      (list-matching-lines-face . bold)
      (ps-line-number-color . "black")
      (ps-zebra-color . 0.95)
      (tags-tag-face . default)
      (view-highlight-face . highlight)
      (widget-mouse-face . highlight))
     (default ((t (nil))))
     (CUA-global-mark-face ((t (:background "cyan" :foreground "black"))))
     (CUA-rectangle-face ((t (:background "maroon" :foreground "white"))))
     (CUA-rectangle-noselect-face ((t (:background "dimgray" :foreground "white"))))
     (bold ((t (:bold t :weight bold))))
     (bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
     (border ((t (:background "white"))))
     (clearcase-dired-checkedout-face ((t (:foreground "red"))))
     (comint-highlight-input ((t (:bold t :weight bold))))
     (comint-highlight-prompt ((t (:foreground "cyan"))))
     (cursor ((t (:background "yellow"))))
     (fixed-pitch ((t (:family "courier"))))
     (flash-paren-face-off ((t (nil))))
     (flash-paren-face-on ((t (nil))))
     (flash-paren-face-region ((t (nil))))
     (font-lock-builtin-face ((t (:foreground "LightSteelBlue"))))
     (font-lock-comment-face ((t (:foreground "OrangeRed"))))
     (font-lock-constant-face ((t (:foreground "Aquamarine"))))
     (font-lock-doc-face ((t (:foreground "LightSalmon"))))
     (font-lock-function-name-face ((t (:foreground "LightSkyBlue"))))
     (font-lock-keyword-face ((t (:foreground "Cyan"))))
     (font-lock-string-face ((t (:foreground "LightSalmon"))))
     (font-lock-type-face ((t (:foreground "PaleGreen"))))
     (font-lock-variable-name-face ((t (:foreground "LightGoldenrod"))))
     (font-lock-warning-face ((t (:bold t :foreground "Pink" :weight bold))))
     (fringe ((t (:background "grey10"))))
     (header-line ((t (:box (:line-width -1 :style released-button) :foreground "grey20" :background "grey90" :box nil))))
     (highlight ((t (:background "darkblue"))))
     (ibuffer-deletion-face ((t (:foreground "red"))))
     (ibuffer-marked-face ((t (:foreground "green"))))
     (isearch ((t (:background "palevioletred2" :foreground "brown4"))))
     (isearch-lazy-highlight-face ((t (:background "paleturquoise4"))))
     (italic ((t (:italic t :slant italic))))
     (menu ((t (nil))))
     (mode-line ((t (:foreground "yellow" :background "darkslateblue" :box (:line-width -1 :style released-button)))))
     (mouse ((t (:background "white"))))
     (region ((t (:background "blue"))))
     (scroll-bar ((t (nil))))
     (secondary-selection ((t (:background "darkslateblue"))))
     (show-block-face1 ((t (:background "gray10"))))
     (show-block-face2 ((t (:background "gray15"))))
     (show-block-face3 ((t (:background "gray20"))))
     (show-block-face4 ((t (:background "gray25"))))
     (show-block-face5 ((t (:background "gray30"))))
     (show-block-face6 ((t (:background "gray35"))))
     (show-block-face7 ((t (:background "gray40"))))
     (show-block-face8 ((t (:background "gray45"))))
     (show-block-face9 ((t (:background "gray50"))))
     (show-paren-match-face ((t (:background "turquoise"))))
     (show-paren-mismatch-face ((t (:background "purple" :foreground "white"))))
     (tool-bar ((t (:background "grey75" :foreground "black" :box (:line-width 1 :style released-button)))))
     (tooltip ((t (:background "lightyellow" :foreground "black"))))
     (trailing-whitespace ((t (:background "red"))))
     (underline ((t (:underline t))))
     (variable-pitch ((t (:family "helv"))))
     (widget-button-face ((t (:bold t :weight bold))))
     (widget-button-pressed-face ((t (:foreground "red"))))
     (widget-documentation-face ((t (:foreground "lime green"))))
     (widget-field-face ((t (:background "dim gray"))))
     (widget-inactive-face ((t (:foreground "light gray"))))
     (widget-single-line-field-face ((t (:background "dim gray")))))))

(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (if window-system
         (color-theme-michaels-clarity)
       (color-theme-dark-laptop))))

(require 'elm-mode)

(require 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'flycheck-mode-hook 'flycheck-elm-setup)

(require 'company)
;;(add-hook 'after-init-hook 'global-company-mode)

(add-hook 'elm-mode-hook
          (lambda ()
            (setq company-backends '(company-elm))))
(add-hook 'elm-mode-hook #'elm-oracle-setup-completion)

(require 'alchemist)
(add-hook `elixir-mode-hook `alchemist-mode)

(setenv "PATH" (concat (getenv "PATH") ":~/.cabal/bin"))
(setq exec-path (append exec-path '("~/.cabal/bin")))

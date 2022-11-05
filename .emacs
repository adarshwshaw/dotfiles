(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-splash-screen t)

;;this will set line number mode to relative
(setq display-line-numbers-type 'relative)

;; add switch frame keybind
(global-set-key (kbd "C-<tab> <right>") `next-window-any-frame)
(global-set-key (kbd "C-<tab> <left>") `previous-window-any-frame)

;;this actuall shows the line number
(global-display-line-numbers-mode)

(add-hook 'emacs-startup-hook 'toggle-frame-maximized)

(set-frame-font "DejaVu Sans Mono-16" nil t)

;;thema gruber
(add-to-list 'custom-theme-load-path
             "~/.emacs.d/theme/gruber-darker-theme/")

;;load theme
(load-theme 'gruber-darker t)
 
;;this will show line number in bottom of the screen
(setq column-number-mode t)
(setq line-number-mode t)

;; auto-suggestion in m-x mode
(ido-mode 1)

;;add melpa repository
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; install use-package

;; (use-package corfu
;;   :custom
;;   (corfu-cycle t)
;;   (corfu-auto t)
;;   (corfu-auto-delay 0.0)
;;   (corfu-auto-prefix 2)
;;   (completion-styles '(basic))
;;   :init
;;   (global-corfu-mode))


;; (setq corfu-auto t
;;       corfu-quit-no-match 'separator)

;; ;; Use Dabbrev with Corfu!
;; (use-package dabbrev
;;   ;; Swap M-/ and C-M-/
;;   :bind (("M-/" . dabbrev-completion)
;;          ("C-M-/" . dabbrev-expand))
;;   ;; Other useful Dabbrev configurations.
;;   :custom
;;   (dabbrev-ignored-buffer-regexps '("\\.\\(?:pdf\\|jpe?g\\|png\\)\\'")))

;; auto save settings
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))
;; this should avoid creation of ~ file 
(setq auto-save-visited-file-name t)
(setq auto-save-visited-mode t)
;; change auto save delay
(setq auto-save-interval 2)
(setq auto-save-timeout 1)


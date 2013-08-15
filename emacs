(add-to-list 'load-path "~/.emacs.d/")

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)


;; key bindings
(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
)

;; solarized theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized/")
(load-theme 'solarized-dark t)


(load "~/.emacs.d/ESS/lisp/ess-site")
(setq inferior-julia-program-name "~/.bin/julia")

(setq auto-mode-alist
      (cons
       '("\\.m$" . octave-mode)
       auto-mode-alist))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 1)
(setq indent-line-function 'insert-tab)

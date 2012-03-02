;;system generation
(custom-set-variables
;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
)
(custom-set-faces
;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
'(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "unknown" :family "Monaco")))))

;;user interface custom
(add-to-list 'load-path "~/.emacs.d/")
(require 'color-theme)
(color-theme-initialize)
(color-theme-calm-forest)
(setq inhibit-startup-message t)
(setq frame-title-format '("" buffer-file-name ""))
(show-paren-mode t)
(global-linum-mode t)
(setq make-backup-files nil)
(set-scroll-bar-mode nil)
(fset 'yes-or-no-p 'y-or-n-p) 
(global-font-lock-mode t)

;;for common lisp
(add-to-list 'load-path "/usr/share/common-lisp/source/slime/")
(setq inferior-lisp-program "/usr/bin/sbcl")
(require 'slime)
(slime-setup)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)
(require 'ido)
(ido-mode t)
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key [?\C-.] 'end-of-buffer)
(global-set-key [?\C-,] 'beginning-of-buffer)
(tool-bar-mode -1)
(mouse-avoidance-mode 'jump)
(auto-save-mode nil)
(global-set-key "\M-SPC" 'set-mark-command)
(global-set-key "\C-u" 'kill-whole-line)
(add-hook 'c-mode-common-hook
'(lambda ()
(require 'xcscope)))
(setq frame-title-format "%b")

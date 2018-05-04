;; this is the common config for all model

;;the ui config
(setq default-directory "~/")
(load-theme 'nnero t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode t)
(electric-pair-mode t)
(setq-default cursor-type 'bar)
(setq inhibit-splash-screen 1)
(global-hl-line-mode 1)
(set-default-font "Hack-16")
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;the defaults
;; file configs
(setq-default make-backup-files nil)
(setq auto-save-default nil)
(prefer-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(require 'recentf)
(recentf-mode 1)


;;global mode and settings
(delete-selection-mode 1)
(require 'popwin)
(popwin-mode t)
(global-company-mode t)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  )

;; my habits kdbs
(global-set-key (kbd "\C-d") 'kill-whole-line)
(global-set-key (kbd "C-K") 'delete-char)
(global-set-key (kbd "C-Z") 'undo)
(global-set-key (kbd "M-c") 'kill-ring-save)
(global-set-key (kbd "M-v") 'yank)
(global-set-key (kbd "M-m") 'scroll-up-command)
(global-set-key (kbd "M-n") 'scroll-down-command)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(defun copy-line()
  (interactive)
  (progn
    (move-end-of-line 1)
    (kill-ring-save (line-beginning-position)
		    (line-end-position))
    (newline)
    (yank)))
(global-set-key (kbd "\C-y") 'copy-line)

(global-set-key (kbd "<f2>") (lambda()
                               (interactive)
                               (dired "~/.emacs.d/elisp")))

(global-set-key (kbd "<f3>") (lambda ()
                               (interactive)
                               (dired "~/orgs/")))

(global-set-key (kbd "<f4>") (lambda ()
                               (interactive)
                               (dired "~/project/")))


;;swiper and counsel in ivy mode
(ivy-mode 1)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

;;magit kbd
(global-set-key (kbd "C-x g") 'magit-status)

(provide 'init-common)

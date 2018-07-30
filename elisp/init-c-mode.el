;;the c/c++ mode configs
(setq c-basic-offset 4)
(require 'ycmd)
(require 'company-ycmd)
(require 'flycheck-ycmd)
(set-variable 'ycmd-server-command '("python" "/home/nnero/tools/ycmd/ycmd"))
(set-variable 'ycmd-global-config "/home/nnero/tools/ycmd/cpp/ycm/.ycm_extra_conf.py")
(company-ycmd-setup)
(flycheck-ycmd-setup)
(add-hook 'c-mode-hook 'ycmd-mode)
(add-hook 'c-mode-hook 'imenu-add-menubar-index)
(add-hook 'c-mode-hook 'flycheck-mode)
(add-hook 'c++-mode-hook 'ycmd-mode)
(add-hook 'c++-mode-hook 'imenu-add-menubar-index)
(add-hook 'c++-mode-hook 'flycheck-mode)

;;(require 'rtags)
;;(require 'company-rtags)

;;(setq rtags-completions-enabled t)
;;(eval-after-load 'company
;;  '(add-to-list
;;    'company-backends 'company-rtags))
;;(setq rtags-autostart-diagnostics t)
;;(rtags-enable-standard-keybindings)

;;(add-hook 'c++-mode-hook 'irony-mode)
;;(add-hook 'c-mode-hook 'irony-mode)
;;(add-hook 'objc-mode-hook 'irony-mode)

;;(defun my-irony-mode-hook ()
;;  (define-key irony-mode-map [remap completion-at-point]
  ;;  'irony-completion-at-point-async)
  ;;(define-key irony-mode-map [remap complete-symbol]
   ;; 'irony-completion-at-point-async))

;;(add-hook 'irony-mode-hook 'my-irony-mode-hook)
;;(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;;(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)
;;(setq company-backends (delete 'company-semantic company-backends))
;;(require 'company-irony-c-headers)
;;(eval-after-load 'company
;;  '(add-to-list
 ;;   'company-backends '(company-irony-c-headers company-irony)))

;;(require 'flycheck-rtags)

;;(defun my-flycheck-rtags-setup ()
;;  (flycheck-select-checker 'rtags)
;;  (setq-local flycheck-highlighting-mode nil) ;; RTags creates more accurate overlays.
;;  (setq-local flycheck-check-syntax-automatically nil))
;; c-mode-common-hook is also called by c++-mode
;;(add-hook 'c-mode-common-hook #'my-flycheck-rtags-setup)
;;(eval-after-load 'flycheck '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(add-hook 'c++-mode-hook (lambda()
                           (local-set-key (kbd "\C-d") 'kill-whole-line)))
(add-hook 'c-mode-hook (lambda()
                         (local-set-key (kbd "\C-d") 'kill-whole-line)))

(global-set-key (kbd "<f5>") (lambda()
                               (interactive)
                               (dired "/home/nnero/project/cplusplus/")))

(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'flycheck-mode)


(provide 'init-c-mode)

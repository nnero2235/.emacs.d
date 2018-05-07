;;python config for editing
;; python auto complete. this is the key.
(elpy-enable)

(global-set-key (kbd "<f6>") (lambda()
                               (interactive)
                               (dired "/home/nnero/project/python")))
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(add-hook 'elpy-mode-hook 'flycheck-mode)

;; disabled 4 spaces virsual mode
(add-hook 'elpy-mode-hook (lambda () (highlight-indentation-mode -1)))

(provide 'init-python)

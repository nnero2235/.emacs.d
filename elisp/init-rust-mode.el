(global-set-key (kbd "<f5>") (lambda()
                               (interactive)
                               (dired "/home/nnero/project/rust/")))
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(provide 'init-rust-mode)

(use-package elpy
  :straight t
  :config
  (eval-after-load 'format-all
    '(add-hook 'python-mode-hook
	       (lambda ()
		 (setq format-all-formatters
		       '(("Python" (ruff "check" "--fix"))))))))

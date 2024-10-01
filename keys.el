(use-package which-key
  :straight t
  :config
  (which-key-mode)
  (which-key-setup-side-window-bottom)
  (which-key-add-key-based-replacements
    "SPC" "leader"
    "SPC b" "buffers"
    "SPC f" "files"
    "SPC g" "git"
    "SPC n" "notes"
    "SPC o" "org"
    "SPC t" "todos"
    "SPC w" "windows")
  (setq which-key-show-early-on-C-h t)
  (setq which-key-idel-delay 0.001)
  (setq which-key-idle-secondary-delay 0.001))

(use-package evil
  :straight t
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-leader
  :straight t
  :init
  (global-evil-leader-mode)
  (evil-leader/set-leader "<SPC>"))

(use-package evil-collection
  :straight t
  :after evil
  :config
  (evil-collection-init))


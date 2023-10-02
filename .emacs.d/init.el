(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("4e92e26137642ca2fc40268c60b77ad77aa2d215c9638a3f7b5837103ff41b97" default))
 '(package-selected-packages '(markdown-mode magit exec-path-from-shell)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Code Retina" :foundry "outline" :slant normal :weight regular :height 98 :width normal)))))
(string= (getenv "EMACS_PORTABLE") "Y")
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula-pro-pro)
(use-package powershell-mode
  :load-path "lisp/powershell-mode/"
  :mode "\\.ps1\\'"

  )
(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))
(defun my-bash-on-windows-shell ()
  (let ((explicit-shell-file-name "C:/Windows/System32/bash.exe"))
    (shell)))
(setq shell-command-switch "-ic")

(my-bash-on-windows-shell)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(put 'erase-buffer 'disabled nil)


;; This is only needed once, near the top of the file
(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/use-package")  
  (require 'use-package))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#003f8e" "#ff9da4" "#d1f1a9" "#ffeead" "#bbdaff" "#ebbbff" "#99ffff" "#ffffff"))
 '(ansi-term-color-vector
   [unspecified "#000000" "#d54e53" "#afd75f" "#e7c547" "#5f87d7" "#af87d7" "#5f87d7" "#dadada"] t)
 '(beacon-color "#ff9da4")
 '(custom-safe-themes
   (quote
    ("04589c18c2087cd6f12c01807eed0bdaa63983787025c209b89c779c61c3a4c4" "dffdbe1a7a037454d1f5740aaebba6026f77fa7ecf3de7c28e4939748da9bd3c" "d480229678525ea1a33018342c9e05de6be6e4179e59b56b2d10a525d3662380" "abe3405767afe98b35b6a2b212af1fbc34e4f4c455310d2b7f2ffd2ec81d387b" "9dd836d779f59ac9b0a073393f8adb0a53ffa968cd1bc05a34f9cd98c5b06371" default)))
 '(fci-rule-character-color "#1c1c1c")
 '(fci-rule-color "#003f8e")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(fringe-mode 6 nil (fringe))
 '(linum-format (quote dynamic))
 '(package-selected-packages
   (quote
    (gherkin-mode feature-mode docker k8s-mode abs-mode plantuml-mode jabber jira-markup-mode magit pandoc pandoc-mode yaml-mode websocket slim-mode restclient protobuf-mode pomidor markdown-mode less-css-mode json-mode go-mode exec-path-from-shell dakrone-theme color-theme-sanityinc-tomorrow coffee-mode cherry-blossom-theme caroline-theme)))
 '(plantuml-jar-path "/home/parrot/plantuml.jar")
 '(pomidor-seconds 2400)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#ff9da4")
     (40 . "#ffc58f")
     (60 . "#ffeead")
     (80 . "#d1f1a9")
     (100 . "#99ffff")
     (120 . "#bbdaff")
     (140 . "#ebbbff")
     (160 . "#ff9da4")
     (180 . "#ffc58f")
     (200 . "#ffeead")
     (220 . "#d1f1a9")
     (240 . "#99ffff")
     (260 . "#bbdaff")
     (280 . "#ebbbff")
     (300 . "#ff9da4")
     (320 . "#ffc58f")
     (340 . "#ffeead")
     (360 . "#d1f1a9"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

;; Install packages

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

(package-initialize)
(use-package exec-path-from-shell 
  :ensure t)
(use-package pomidor 
  :ensure t)
(use-package feature-mode 
  :ensure t)
(use-package slim-mode 
  :ensure t)
(use-package yaml-mode 
  :ensure t)

;; Pomodoro
(setq pomidor-sound-tick nil
      pomidor-sound-tack nil
      )


(exec-path-from-shell-initialize)
(setq markdown-command "/usr/bin/pandoc")

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)
(add-to-list 'custom-theme-load-path "~/emacs-themes/caroline-theme/")
(add-to-list 'load-path "~/emacs-themes/caroline-theme/")
(load-theme 'caroline-dark t)
(global-set-key "\M-\r" 'shell-resync-dirs)

(setq js-indent-level 2)

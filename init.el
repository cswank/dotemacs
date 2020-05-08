;;; init --- Summary
;;; emacs init
;;; Commentary:

;;; Code:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Load Paths
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/elpa")
(add-to-list 'load-path "~/.emacs.d/color")
(add-to-list 'load-path "~/.emacs.d/plugins/mmm-mode")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;MELPA packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "https://melpa.org/packages/")
   t)
    (package-initialize))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Load Libraries
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-library "my-color-theme")
(load-file "~/.emacs.d/my-plugins/my-beer.el")
(load-file "~/.emacs.d/my-plugins/my-c.el")
(load-file "~/.emacs.d/my-plugins/my-go.el")
(load-file "~/.emacs.d/my-plugins/my-javascript.el")
(load-file "~/.emacs.d/my-plugins/my-lisp.el")
(load-file "~/.emacs.d/my-plugins/my-magit.el")
(load-file "~/.emacs.d/my-plugins/my-org.el")
(load-file "~/.emacs.d/my-plugins/my-python.el")
(load-file "~/.emacs.d/my-plugins/my-random-stuff.el")
(load-file "~/.emacs.d/my-plugins/my-terminal.el")
(load-file "~/.emacs.d/my-plugins/my-weather.el")
(load-file "~/.emacs.d/my-plugins/my-keybindings.el")
(when (string= (getenv "EMACS_EMAIL") "true")
  (load-file "~/.emacs.d/my-plugins/my-email.el"))
(when (not (string= (getenv "SLACK_CLIENT_ID") "nil"))
  (load-file "~/.emacs.d/my-plugins/my-slack.el"))
(electric-indent-mode -1)
(provide 'init)
;;; init.el ends here

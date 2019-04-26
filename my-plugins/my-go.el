;; init-go.el --- Initialize Golang configurations.	-*- lexical-binding: t -*-

;; Copyright (C) 2019 Vincent Zhang

;; Author: Vincent Zhang <seagle0128@gmail.com>
;; URL: https://github.com/seagle0128/.emacs.d

;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;

;;; Commentary:
;;
;; Golang configurations.
;;

;;; Code:
;;
;; Go packages:
;; go get -u github.com/mdempsky/gocode # github.com/nsf/gocode
;; go get -u github.com/rogpeppe/godef
;; go get -u golang.org/x/tools/cmd/goimports
;; go get -u golang.org/x/tools/cmd/guru
;; go get -u golang.org/x/tools/cmd/gorename
;; go get -u golang.org/x/tools/cmd/gotype
;; go get -u golang.org/x/tools/cmd/godoc
;; go get -u github.com/derekparker/delve/cmd/dlv
;; go get -u github.com/josharian/impl
;; go get -u github.com/cweill/gotests/...
;; go get -u github.com/fatih/gomodifytags
;; go get -u github.com/davidrjenni/reftools/cmd/fillstruct

(eval-when-compile
  (require 'init-custom))

;; Golang
(use-package go-mode
  :bind (:map go-mode-map
              ([remap xref-find-definitions] . godef-jump)
              ("C-c R" . go-remove-unused-imports)
              ("<f1>" . godoc-at-point))
  :config
  (use-package go-dlv)
  (use-package go-fill-struct)
  (use-package go-impl)
  (use-package go-rename)
  (use-package golint)
  (use-package govet)

  (use-package go-tag
    :bind (:map go-mode-map
                ("C-c t" . go-tag-add)
                ("C-c T" . go-tag-remove))
    :config (setq go-tag-args (list "-transform" "camelcase")))

  (use-package gotest
    :bind (:map go-mode-map
                ("C-c a" . go-test-current-project)
                ("C-c m" . go-test-current-file)
                ("C-c ." . go-test-current-test)
                ("C-c x" . go-run)))

  (use-package go-gen-test
    :bind (:map go-mode-map
                ("C-c C-t" . go-gen-test-dwim))))

;; Local Golang playground for short snippes
(use-package go-playground
  :diminish go-playground-mode
  :commands go-playground-mode)

(provide 'init-go)

;; ;;; my-go --- Summary
;; ;;; setup go development
;; ;;; Commentary:

;; ;;; Code:
;; ;; which one??
;; (require 'go-mode)
;; (defun auto-complete-for-go ()
;;   "Come on, I don't want to document this."
;;   (auto-complete-mode 1))

;; ;;(when (memq window-system '(mac ns))
;; ;;  (exec-path-from-shell-initialize)
;; ;;  (exec-path-from-shell-copy-env "GOPATH"))

;; (defun my-go-mode-hook ()
;;   "Come on, I don't want to document this."
;;   (setq gofmt-command "goimports")
;;   (add-hook 'before-save-hook 'gofmt-before-save)
;;   (if (not (string-match "go" compile-command))
;;       (set (make-local-variable 'compile-command)
;;            "go build -v && go test -v && go vet"))
;;   (local-set-key (kbd "M-.") 'godef-jump))

;; (add-hook 'go-mode-hook 'my-go-mode-hook)
;; ;;(yas-reload-all)
;; (add-hook 'go-mode-hook 'yas-minor-mode)

;; (defun go-create-playground ()
;;   "Create a new temporary file with a skeletal Go application."
;;   (interactive)
;;   (let ((filename (make-temp-file "go-play-" nil ".go")))
;;     (find-file filename)
;;     (rename-buffer (generate-new-buffer-name "Go Playground"))
;;     (insert (concat "package main\n\nimport (\n\t\"fmt\"\n)\n\nfunc main() {\n\tfmt.Println(\"This file is located in " filename "\")\n}"))
;;     (save-buffer)
;;     (previous-line)
;;     (end-of-line)
;;     (insert "\n\t")
;;     (go-mode)))

;; (defun go-switch-to-playground ()
;;   "Switch to Go Playground buffer, creating if necessary."
;;   (interactive)
;;   (let ((playground (get-buffer "Go Playground")))
;;     (if playground
;;         (switch-to-buffer playground)
;;       (go-create-playground))))

;; (global-set-key (kbd "C-c C-g r") 'go-play-buffer)
;; (global-set-key (kbd "C-c C-g p") 'go-switch-to-playground)
;; (global-set-key (kbd "C-c C-g n") 'go-create-playground)

;; (add-hook 'go-mode-hook
;;           (lambda ()
;;             (add-hook 'before-save-hook 'gofmt-before-save)
;;             (add-hook 'completion-at-point-functions 'go-complete-at-point)
;;             (setq tab-width 4)
;;             (setq indent-tabs-mode 1)))

;; (add-hook 'go-mode-hook 'flycheck-mode)

;; ;;(add-hook 'go-mode-hook 'auto-complete-for-go)
;; (provide 'my-go)
;; ;;; my-go.el ends here

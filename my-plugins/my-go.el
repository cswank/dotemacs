;;; my-go --- Summary
;;; setup go development
;;; Commentary:

;;; Code:
;; which one??
(require 'lsp-mode)
(add-hook 'go-mode-hook #'lsp)
(require 'company-lsp)
(push 'company-lsp company-backends)
(require 'lsp-ui)

(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

(add-hook 'go-mode-hook 'flycheck-mode)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)

(setq lsp-gopls-staticcheck t
      lsp-eldoc-render-all t
      lsp-ui-doc-enable nil
      lsp-ui-peek-enable t
      lsp-ui-sideline-enable t
      lsp-ui-imenu-enable t
      lsp-ui-flycheck-enable t)

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

;;(add-hook 'go-mode-hook 'auto-complete-for-go)
(provide 'my-go)
;;; my-go.el ends here

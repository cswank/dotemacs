;;; Compiled snippets and support files for `go-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'go-mode
                     '(("struct" "type $1 struct {\n     $0\n}\n\nfunc New(opts ...func(*$1)) *$1 {\n     x :=&$1{}\n\n     for _, opt := range opts {\n         opt(x)\n     }\n\n     return x\n}" "struct" nil nil nil "/Users/craig/.emacs.d/snippets/go-mode/struct" nil nil)
                       ("if err" "if err != nil {\n	return err\n}  \n" "err" nil nil nil "/Users/craig/.emacs.d/snippets/go-mode/err" nil nil)))


;;; Do not edit! File generated at Tue Jul 21 12:53:17 2020

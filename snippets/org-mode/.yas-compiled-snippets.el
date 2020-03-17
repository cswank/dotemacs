;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
                     '(("table2" "#+NAME: $1\n| Category              | Amount |\n|-----------------------+--------|\n| $0                      |        |\n|-----------------------+--------|\n| Total:                |   0.00 |\n#+TBLFM: @>\\$2=vsum(@2..@-1);%.2f" "table2" nil nil nil "/Users/craig/.emacs.d/snippets/org-mode/table2" nil nil)))


;;; Do not edit! File generated at Tue Mar 17 06:37:36 2020

;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
                     '(("vfunc" "#+TBLFM: @>\\$$1=v${2:$$(yas-choose-value '(\"sum\" \"mean\"))}(@2..@-1);%.2f" "vfunc" nil nil nil "/Users/craig/.emacs.d/snippets/org-mode/vfunc" nil nil)
                       ("table2" "#+NAME: $1\n| Category              | Amount |\n|-----------------------+--------|\n| $0                      |        |\n|-----------------------+--------|\n| Total:                |   0.00 |\n#+TBLFM: @>\\$2=vsum(@2..@-1);%.2f" "table2" nil nil nil "/Users/craig/.emacs.d/snippets/org-mode/table2" nil nil)
                       ("gotable" "#+NAME: $2\n#+BEGIN_SRC go :var x=0 :results output :imports '(\"fmt\") \n  fmt.Println(x*x)\n#+END_SRC\n\n#+NAME: $3\n| a |  b |\n|---+----|\n| $0 |    |\n|   |    |\n#+TBLFM: \\$2='(org-sbe $2 (x \\$1))\n" "gotable" nil nil nil "/Users/craig/.emacs.d/snippets/org-mode/gotable" nil nil)))


;;; Do not edit! File generated at Wed Mar 18 07:22:29 2020

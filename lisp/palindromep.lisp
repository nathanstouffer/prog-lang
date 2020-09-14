(defun palindromep(alist)					; function to test if a list is a palindrome
    (cond							; begin if statement
    ((null alist) 't )						; if the list is empty, return t
    ((atom alist) 't )						; if the list contains only one element return t
    ((not (equal (first alist) (first (last alist)))) nil)	; if first and last element of the list differ, return nil
    ((palindromep (rest (reverse (rest alist)))))		; make recursive call on the list without the first and last elements
    )
)

; a few test calls
(write (palindromep '(a b b a) ))
(terpri)
(write (palindromep '(a b c b a) ))
(terpri)
(write (palindromep '(a b c) ))
(terpri)
(write (palindromep '(a (d e) b (d e) a) ))
(terpri)
(write (palindromep '(a (d e) b (e d) a) ))

; --------------------------------------------------------------
(defun insert_by_pos (pos lst el)
    (nconc (subseq lst 0 pos) (cons el (subseq lst pos))))

(defconstant L (list 5 1 4 2 9 12 432 1 3 2))

(insert_by_pos 2 L 56)

(print (insert_by_pos 1 L 56))

; subseq - обрезать последовательность
; cons - добавить элемент в начало списка
; nconc - сложить списки
; --------------------------------------------------------------


; --------------------------------------------------------------
(defun delete_by_pos (pos lst)
    (nconc (subseq lst 0 pos) (subseq lst (+ 1 pos))))

(print (delete_by_pos 4 L))
; --------------------------------------------------------------


; --------------------------------------------------------------
(defun found (x lst)
    (cond ((null lst) nil)
    ((eql x (car lst)))
    (t (found x (cdr lst)))
    ))

(print (found 56 (insert_by_pos 2 L 56)))

(print (found 2 L))

(print (found 54 (insert_by_pos 2 L 56)))

(print (found 10 L))

; cond - аналог case в С++
; eql - проверяет, являются ли две структуры одним и тем же объектом
; car - первый элемент списка
; cdr - хвост списка
; --------------------------------------------------------------
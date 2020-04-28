(defun insert_by_pos (pos lst el)
    (nconc (subseq lst 0 pos) (cons el (subseq lst pos))))

(defconstant L (list 1 2 3 4 5))

(insert_by_pos 2 L 56)

(print (insert_by_pos 1 L 56))

; subseq - обрезать последовательность
; cons - добавить элемент в начало списка
; nconc - сложить списки
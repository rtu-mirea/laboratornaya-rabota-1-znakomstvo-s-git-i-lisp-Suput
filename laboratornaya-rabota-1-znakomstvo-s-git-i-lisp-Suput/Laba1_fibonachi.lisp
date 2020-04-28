(defun fib(i)
   (if (= i 1)                   
     0
     (if (= i 2)
       1
       (+ (fib (- i 1)) (fib (- i 2))))))

(loop for i from 1 to 16     
      do (format t " ~D~%" (fib i))) 
 
(loop for i from 1 to 16     
      do (format t "~D," (fib i))     
      finally (format t "..~%"))
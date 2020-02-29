(defun fib(i)
  (if (= i 1) 
  1
  (if (= i 2)
  1
  (+ (fib (- i 1)) (fib (- i 2))))))

(defun solve(i)
  (let ((f (fib i)))
  (print f)
  (if (< 4000000 f)
  0 ;return
  (if (= 0 (mod f 2))
  (+ f (solve (+ i 1)))
  (solve (+ i 1))))))

(print (solve 1))
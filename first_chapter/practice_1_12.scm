(define (f n i)
  (cond ((and (= n 0) (= i 0)) 1)
	((or (= i 0) (= i n)) 1)
	(else (+ 
		(f (- n 1) (- i 1)) 
		(f (- n 1) i)))))
(f 4 2)

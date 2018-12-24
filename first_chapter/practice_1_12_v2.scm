(define (factorial-iter product counter n)
  (if (> counter n)
    product
    (factorial-iter (* product counter) (+ counter 1) n)))
(define (factorial n)
  (factorial-iter 1 1 n))

(define (T row col)
  (/ (factorial row)
     (* (factorial col)
	(factorial (- row col)))))




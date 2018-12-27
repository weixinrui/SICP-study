(define (even? x)
  (= (remainder x 2) 0))
(define (iter a b p q count)
  (if (= count 0)
    b
    (if (even? count)
      (iter a
	    b
	    (+ (square p) (square q))
	    (+ (square q) (* 2 (* p q)))
	    (/ count 2))
      (iter (+ (* b q) (* a q) (* a p))
	    (+ (* b p) (+ a q))
	    p 
	    q
	    (- count 1)))))
(define (fib n)
  (iter 1 0 0 1 n))

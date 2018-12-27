(define (exp-iter counter num b n)
  (if (= counter n)
    num
    (exp-iter (+ counter 1)
	      (* num b)
	      b
	      n)))
(define (exp b n)
  (exp-iter 0 1 b n))


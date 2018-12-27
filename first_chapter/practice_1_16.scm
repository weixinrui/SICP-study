(define (iter a b n)
  (if (= n 0)
    1
    (if (even? n)
      (* a 
	 (iter a (square b) (/ n 2)))
      (* b 
	 (iter a b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (square n)
  (* n n))

(define (fast-exp b n)
  (iter 1 b n))


(define (fast-exp b n)
  (if (= n 0) 1
    (if (even? n)
      (square (fast-exp b (/ n 2)))
      (* b (fast-exp b (- n 1))))))
(define (square x)
  (* x x))
(define (even? x)
  (= (remainder x 2) 0))

(define (% n x)
  (remainder n x))



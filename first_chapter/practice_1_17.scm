(define (double x)
  (+ x x))
(define (halve x)
  (/ x 2))
(define (iter tmp a b)
  (if (= b 0)
    0
    (if (even? b)
      (double (iter tmp a (halve b)))
      (+ a (iter tmp a (- b 1))))))
(define (even? x)
  (= (remainder x 2) 0))

(define (mul a b)
  (iter 1 a b))
;;The function is:
;;when b == even : a×b = a×b/2 + a×b/2
;;when b == odd: a×b = a + a×(b-1)

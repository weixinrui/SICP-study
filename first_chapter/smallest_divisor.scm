(define (square x)
  (* x x))
(define (divisor? x y)
  (= (remainder x y) 0))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
	 ((divisor? n 2) 2)
	 ((divisor? n test-divisor) test-divisor)
	 (else (find-divisor n (+ test-divisor 2)))))
(define (smallest-divisor n)
  (find-divisor n 3))
;;算法相对书上进行了改进，因为素数是只能被1和自身整除的数，所以素数肯定是奇数，
;;所以在进行检查的时候可以只对奇数进行检查，这样就跳过了所有的偶数。

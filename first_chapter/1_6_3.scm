(load "abs.scm")
(load "square.scm")
(define (good-enough old-guess new-guess)
  (< (/ 
       (abs (- new-guess old-guess))
       old-guess)
     0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3.0))

(define (cubic-iter guess x)
  (if (good-enough guess (improve guess x))
    (improve guess x)
    (cubic-iter (improve guess x) 
		x)))
(define (cubic x)
  (cubic-iter 1.0 x))

(cubic 8)

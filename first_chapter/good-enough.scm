(load "abs.scm")
(load "square.scm")
(define (good-enough guess x)
  (< (abs (- (square guess) x)) 0.001))


(define (inc x)
  (+ x 1))
(define (sum start end)
  (define (iter product counter)
    (if (> counter end)
      product
      (iter (+ product counter) (inc counter))))
  (iter 0 start))
(sum 2 5)

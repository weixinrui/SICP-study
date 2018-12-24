(define (iter a b c i n)
  (if (= i n)
    c
    (iter (+ a (* b 2) (* c 3)) a b (+ i 1) n)))
(define (f n)
  (iter 2 1 0 0 n))

(f 3)

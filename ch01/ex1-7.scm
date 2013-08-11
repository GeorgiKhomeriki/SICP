(define (sqr x) (sqrt-iter 0 1 x))

(define (sqrt-iter prev-guess guess x)
  (if (good-enough? prev-guess guess)
      guess
      (sqrt-iter guess
                 (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? prev-guess guess)
  (< (abs (- prev-guess guess)) 0.001))

(define (square x) (* x x))
(define (square x) (* x x))

(define (abs2 x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(define (abs3 x)
  (cond ((< x 0) (- x))
        (else x)))

(define (abs4 x)
  (if (< x 0)
      (- x)
      x))

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))


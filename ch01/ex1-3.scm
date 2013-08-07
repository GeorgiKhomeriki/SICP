(define (sum-square-largest x y z)
  (cond ((and (> x z) (> y z)) (sum-square x y))
        ((and (> x y) (> z y)) (sum-square x z))
        (else                  (sum-square y z))))

(define (sum-square x y)
  (+ (square x)
     (square y)))

(define (square x) (* x x))
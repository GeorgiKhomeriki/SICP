(define (cube-root x) (cube-rt 1 x))

(define (cube-rt guess x)
  (if (good-enough? guess x)
      guess
      (cube-rt (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ 
      (/ x (square guess))
      (* 2 guess))
     3))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube x) (* x x x))

(define (square x) (* x x))

(define (pascal x y)
  (if (or (<= x 1) (<= y 1) (>= x y))
    1
    (+ (pascal (- x 1) (- y 1))
       (pascal x (- y 1)))))

(define (print-pascal n)
  (define (iter-col x y)
    (if (<= x y)
      (begin
        (display (pascal x y))
        (display " ")
        (iter-col (+ x 1) y))))
  (define (iter-row n y)
    (if (>= n y)
      (begin
        (iter-col 1 y)
        (newline)
        (iter-row n (+ y 1)))))
  (iter-row n 1))
 

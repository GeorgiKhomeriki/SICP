(define (pascal x y)
  (if (or (<= x 1) (<= y 1) (>= x y))
    1
    (+ (pascal (- x 1) (- y 1))
       (pascal x (- y 1)))))

(define (print-pascal n)
  (define (iter x y)
    (if (<= x y)
      (begin
        (display (pascal x y))
        (iter (+ x 1) y))))
    (if (> n 0)
      (begin
        (iter 1 n)
        (newline)
        (print-pascal (- n 1)))))
    

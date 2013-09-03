(define (f-rec n)
  (cond ((< n 3) n)
        (else (+ (f-rec (- n 1))
                 (* (f-rec (- n 2)) 2)
                 (* (f-rec (- n 3)) 3)))))

(define (f-iter n)
  (f-iterr 0 1 2 n))

(define (f-iterr a b c n)
  (if (= n 0)
    a
    (f-iterr
      b
      c
      (+ (* a 3)
         (* b 2) 
         c)
      (- n 1))))


(define (expt-rec b n)
  (cond ((= n 0) 1)
        ((even? n) (square (expt-rec b (/ n 2))))
        (else (* b (expt-rec b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (square x)
  (* x x))

(define (expt-iter b n)
  (define (iter b n a)
    (cond ((<= n 0) a)
          ((even? n) (iter (square b) 
                           (- (/ n 2) 1)
                           (* a (square b))))
          (else (iter b 
                (- n 1) 
                (* a b)))))
  (iter b n 1))

(define (power a b)
  (cond
    ((eq? b 0) 1)
    ((eq? b 1) a)
    (else
     (begin
       (set! b (- b 1))
       (* a (power a b))))))
    
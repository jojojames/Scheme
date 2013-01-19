(define (IsSorted list)
  (cond
    ((null? list) #T)
    ((> (car list) (car (cdr list))) #F)
    (else
     (IsSorted (cdr list)))))
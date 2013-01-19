 #lang scheme
(define (IsSet List)
  (cond
    ((null? List) #T)
    ((member (car List) (cdr List)) #F)
    (else
     (IsSet (cdr List)))))
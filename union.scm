#lang scheme
(define (Union ListA ListB)
  (cond
    ((null? ListB) ListA)
    ((member (car ListB) ListA)
     (Union ListA (cdr ListB)))
    (else
     (Union (cons (car ListB) ListA) (cdr ListB)))))
     
#lang scheme
(define (IsSorted list)
  (cond
    ((null? (cdr (cdr list))) (< (car list) (car (cdr list))))
    ((< (car list) (car (cdr list))) (IsSorted (cdr list)))
    (else #f)))
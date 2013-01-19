#lang scheme
(define (ListDouble list)
  (cond
    ((null? list) '())
    (else
     (cons (car list) (cons (car list) (cons (ListDouble (cdr list)) '()))))))
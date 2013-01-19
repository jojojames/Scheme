#lang scheme

(define (RmA list)
  (cond
    ((null? list) '()) ; if null, return empty
    ((null? (cdr list)) ; 1 element in the list
     (cond
       ((eq? (car list) 'a) '()) ; if the last element is a, return null
       (else (cons (car list) '())))) ; if not, return the element
    ((null? (cdr (cdr list))) ; two elements in the list
     (cond
       ((eq? (car list) 'a) (RmA (cdr list))) ; remove the first element and call the function
       (else (cons (car list) (RmA (cdr list)))))) ; concatenate car and function(cdr)
    ((eq? (car list) 'a) (RmA (cdr list))) ; if equal to a, remove first element
    (else (cons (car list) (RmA (cdr list)))))) ; else concatenate car and function(cdr)
    
    

    
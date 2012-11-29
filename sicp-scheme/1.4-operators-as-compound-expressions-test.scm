#lang racket/base
(require rackunit)

(define (a-plus-abs-b a b) 
  ((if (> b 0) + -) a b))
 
(check-equal? (a-plus-abs-b 1 -2) 3 "if b is negative, subtract from a")
(check-equal? (a-plus-abs-b 1 2) 3 "if b is positive sum to a")
(check-equal? (a-plus-abs-b 1 0) 1 "if is returning a function and that is invoked over two arguments")

#lang racket/base
 
(require rackunit "1.1-evaluation.scm")

(check-equal? (+ 5 3 4) 12 "addition")
(check-equal? (- 9 1) 8 "subtraction")

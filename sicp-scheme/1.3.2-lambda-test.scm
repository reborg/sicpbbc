#lang racket
(require rackunit "1.3.2-lambda.scm")

(check-equal? (pi-sum 2 2) 0.125)
(check-equal? (test  (lambda (x) (* x 2)) 2) 4)
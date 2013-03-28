#lang racket/base
(require rackunit "1.29-simpson-rule.scm")

(define n 100)
(define (cube x) (* x x x))

(check-equal? (h 0 1 100) 1/100 "it should give me 1/100 back")
(check-equal? (h 2 4 1) 2 "it should give me 2 back")

(check-equal? (yk cube 2 4 1) (cube 4) "it should give me 2 back")

(check-equal? (round (* 100000000 (bart cube 0 1 n))) .249999875 "it should be more precise than the previous method")

#lang racket/base
(require rackunit "1.29-simpson-rule.scm")

(define n 100)
(define (cube x) (* x x x))

(check-equal? (h 0 1 100) 1/100 "it should give me 1/100 back")
(check-equal? (h 2 4 1) 2 "it should give me 2 back")

(check-equal? (y cube 2 4 2) (cube 4) "it should give me 2 back")

;;(check-equal? (round (* 100000000 (simpson cube 0 1 n))) .249999875 "it should be more precise than the previous method")
(check-equal? (simpson cube 0 1 1000) 0.9996666666666666)
(check-equal? (integral cube 0 1 0.01) 0.24998750000000042)
;;(check-equal? (integral cube 0 1 1000) 0.24998750000000042)

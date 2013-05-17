#lang racket
(require rackunit "2.1.4-interval-arithmetic.scm")

(check-equal? (car (make-interval 1 3)) 1)
(check-equal? (lower-bound (make-interval 1 3)) 1)
(check-equal? (upper-bound (make-interval 1 3)) 3)

(check-equal? (lower-bound (add-interval (make-interval 1 3) (make-interval 4 6))) 5)
(check-equal? (upper-bound (add-interval (make-interval 1 3) (make-interval 4 6))) 9)

(check-equal? (lower-bound (*-interval (make-interval 2 5) (make-interval 1 2))) 2)
(check-equal? (upper-bound (*-interval (make-interval 2 5) (make-interval 1 2))) 10)

;; let's say we have error percentage on two measures: 10% on 4, 10% 10
;; 4 is going to move 3.6 - 4.4
;; 10 is going to move 9.5 - 10.5
;; my assumption is that is should give us 40 +/- 10%
;; And I can tell you WRONG ASSUPTION

;; (check-equal? (*-interval (make-interval 3.6 4.4) (make-interval 9 11)) (make-interval 36 44))

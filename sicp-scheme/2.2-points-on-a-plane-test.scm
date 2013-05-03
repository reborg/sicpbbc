#lang racket
(require rackunit "2.2-points-on-a-plane.scm")

;;(define line-45-degree (cons (cons (cons 0 0) 2) 2))
(define line-45-degree (cons (make-point 0 0) (make-point 2 2)))
;;((0 0) (2 2))
;;((x1 y1) (x2 y2))
(check-equal? (mid-point line-45-degree) (cons 1 1))

;;(check-equal? (pi-sum 2 2) 0.125)
;;(check-equal? (test  (lambda (x) (* x 2)) 2) 4)

#lang racket

(define (make-interval x y) (cons x y))
(define (lower-bound x) (car x))
(define (upper-bound x) (cdr x))

(define (sum-bound f x y)
  (+ (f x) (f y)))

(define (add-interval x y)
  (make-interval (sum-bound lower-bound x y)
                 (sum-bound upper-bound x y)))

(define (*-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(provide make-interval lower-bound upper-bound add-interval *-interval)

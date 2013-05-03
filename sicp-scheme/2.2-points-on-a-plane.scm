#lang racket

(define (start-point line) (car line))
(define (end-point line) (cdr line))
(define (x point) (car point))
(define (y point) (cdr point))
(define (make-point x y) (cons x y))
(define (diff x y) (/ (- x y) 2))

(define (mid-point line)
  (let (
        (x1 (x (start-point line)))
        (y1 (y (start-point line)))
        (x2 (x (end-point line)))
        (y2 (y (end-point line))))

  (make-point (diff x2 x1) (diff y2 y1))))

(provide mid-point make-point)

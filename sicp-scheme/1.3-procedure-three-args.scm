#lang racket/base

(define (biggest x y)
  (if (< x y) y x))

(define (smaller x y)
  (if (> x y) y x))

(define (biggest-three x y z)
  (biggest (biggest x y) z))

(define (smallest-of-three x y z)
  (smaller (smaller x y) z))

(define (<= x y) (not (> x y)))
(define (>= x y) (not (< x y)))

(define (sum-square x y)
  (+ (* x x) (* y y)))

(define (sum-square-biggest-two x y z)
  (cond 
    ((and (<= x y) (<= y z)) (sum-square y z))
    ((and (<= y z) (<= z x)) (sum-square z x))
    (else (sum-square x y))))

(provide biggest biggest-three smaller smallest-of-three sum-square-biggest-two <= >=)

#lang racket/base

(define (good-enough? guess x)
  (< (abs (- (* guess guess guess) x)) 0.00000000001))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (cube-root guess x) 
  (if (good-enough? guess x)
    guess
    (cube-root (improve guess x) x)))

(provide cube-root)

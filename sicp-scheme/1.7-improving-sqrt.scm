#lang racket/base

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.00000000001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x) 
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define (better-sqrt guess x)
  (if (good-enough? (improve guess x) x)
    (improve guess x)
    (better-sqrt (improve guess x) x)))

(provide sqrt-iter average good-enough? improve better-sqrt)

#lang racket/base

(define (plus-1 a b)
  (if (= a 0)
    b
    (+ 1 (+ (- a 1) b))))

(define (plus-2 a b)
  (if (= a 0)
    b
    (+ (- a 1) (+ 1 b))))

(provide plus-1 plus-2)

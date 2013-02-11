#lang racket/base

(define (func-tree n) 
  (cond 
    ((< n 3) n) 
    (else 
      (+ (func-tree (- n 1)) 
         (* 2 (func-tree (- n 2)))
         (* 3 (func-tree (- n 3)))))))

(define (func-linear n)
  (if (< n 3)
    n
    (func 2 1 0 n)))

(define (func a b c count)
  (if (< count 3)
    a
    (func (+ (* 1 a) (* 2 b) (* 3 c)) a b (- count 1))))

(provide func-tree func-linear)

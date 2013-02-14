#lang racket/base

(define (exp-1 b n)
  (if (= 0 n)
    1
    (* b (exp-1 b (- n 1)))))

(define (exp-iter b counter so-far)
  (if (= 0 counter)
    so-far
    (exp-iter b (- counter 1) (* b so-far))))

(define (exp-2 b n)
  (exp-iter b n 1))

(define (exp-3 b n)
  (cond ((= 0 n) 1)
    ((even? n) (expt (exp-3 b (/ n 2)) 2))
    (else (* b (exp-3 b (- n 1))))))

(provide exp-1 exp-2 exp-3)

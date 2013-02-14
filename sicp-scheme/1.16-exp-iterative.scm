#lang racket/base

(define (expiter b counter a c)
  (cond ((= 0 counter) a)
    ((even? counter) (expiter b (- counter 1) (expt b (+ 1 c)) (+ 1 c)))
    (else (expiter b (- counter 1) (* b a) (+ 1 c)))))

(define (ex b n)
  (expiter b n 1 0))

(provide ex)

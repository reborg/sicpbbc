#lang racket/base
(require rackunit "1.7-improving-sqrt.scm")

(define (round-todec decimal float)
  (round (* (expt 10 decimal) float)))

; fails, expected 0.000300000 but is .000300015
;(check-equal? (round-todec 10 (sqrt-iter 0.0002 0.00000009)) 3000000.0 "10 digits precision for 9e-08")

; this one goes infinite loop for 9.7899999e48 but not for 9.7899998e48
(check-equal? (sqrt-iter 10000000.0 9.7899998e48) 3.1288975374722645e+24 "large number")

; the improve function stops working for sufficiently larger values
; in this example I demonstrate that improving from 1e49 toward 1e50 increase the difference between
; 1e50 and 1e49 instead of making it smaller as it should.
;(check-true (< (- 1e50 (improve 1e49 1e50)) (- 1e50 1e49))  "should improve closer to the target result")


; BETTER IMPROVER
; in this version, improver will stop when the best improve has been reached, without attempting
; further operations that might diverge.
(check-= (better-sqrt 8.0 80) 8.944271909999159 0.00000000001 "should improve even for large numbers")

#lang racket/base
(require rackunit "1.5-normal-vs-applicative.scm")

;(check-equal? (p) 1 "p is a procedure that takes no arg and invoke itself resulting in a nice infinite loop.")
(check-equal? (test 0 1) 0 "return zero if first arg is zero")

; normal order evaluation
;(test 0 (p))
;(if (= 0 0) 0 (p))
;0

; applicative order
;(test 0 (p))
; never return from p expansion attempt

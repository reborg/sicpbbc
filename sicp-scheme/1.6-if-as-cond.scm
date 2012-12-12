#lang racket/base

; definition of good-enough changed to allow short recursion
(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.1))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x) 
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define recursion-ender
  (λ (guess x)
     (raise "end of improver reached")))

; wrapping around anonymous sqrt-iter with necessary binbing
(define (sqrt-improver partial)
  ; original sqrt-iter stripped out of its name
  (λ (guess x) 
    ; if you use new-if here, all parameters including recursion are evaluated
    ; before a choice can be made with cond, resulting in the ender being called
    ; no matter the level of identations passed in.
    (if (good-enough? guess x)
            guess
            (partial (improve guess x) x))))

(provide sqrt-iter new-if sqrt-improver recursion-ender)

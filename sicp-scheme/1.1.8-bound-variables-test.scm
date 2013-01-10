#lang racket/base
(require rackunit)

(define (sum x y)
  (+ x y))

(check-equal? 
  (sum 1 2) 3 "Simple sum function does what is expected. X and Y are said to be bound as formal parameter of the function. They are not free in the sense that you cannot use them inside the function as normal variables without interfering with their values as parameters. You're not free to use them.")

(define (tennent x y)
  ((λ () (+ x y))))

(check-equal? 
  (tennent 1 2) 3 "Now I can wrap what the sum is doing in a labmda and invoking it in place without altering the result (tennent). X is free in the inner function and bound in the outer function. You're free to use x or to rebind x.")

(define (rebound-x x y)
  ((λ (x) (+ x y)) 2))

(check-equal? 
  (rebound-x 1 2) 4 "x was rebound and the sum is altered")

(define (unused-var x y)
  ((λ (a) (+ x y)) 2))

(check-equal? 
  (unused-var 1 2) 3 "we can always bound a variable that is not used.")

(define (sqrt x) 
  (define (average x y)
    (/ (+ x y) 2))
  (define (good-enough? guess x)
    (< (abs (- (* guess guess) x)) 0.001)) 
  (define (improve guess x)
    (average guess (/ x guess))) 
  (define (sqrt-iter guess x)
    (if (good-enough? guess x) guess
    (sqrt-iter (improve guess x) x))) 
  (sqrt-iter 1.0 x))

(check-equal? 
  (round (sqrt 4)) 2.0 "I can nest as many funct definitions without lambdas")

(define (sqrt-with-lexical-scoping x) 
  (define (average x y)
    (/ (+ x y) 2))
  (define (good-enough? guess)
    (< (abs (- (* guess guess) x)) 0.001)) 
  (define (improve guess)
    (average guess (/ x guess))) 
  (define (sqrt-iter guess)
    (if (good-enough? guess) guess
    (sqrt-iter (improve guess)))) 
  (sqrt-iter 1.0))

(check-equal? 
  (round (sqrt-with-lexical-scoping 4)) 2.0 "X is now visible in all the inner procedures, it's free and doesn't need re-bound.")


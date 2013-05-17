#lang racket/base
(require rackunit)

(define (cube x) (* x x x))

(check-equal? (cube 2) 8 "the cube of 2 is 8")
(check-equal? (cube 3) 27 "the cube of 3 is 27")

(define (recursive-sum-integers a b)
  (if (> a b) 
    0 
    (+ a (recursive-sum-integers (+ a 1) b))))

(check-equal? (recursive-sum-integers 1 10) 55 "summing all numbers in a range")

(define (recursive-sum-cubes a b)
  (if (> a b) 
    0 
    (+ (cube a) (recursive-sum-cubes (+ a 1) b))))

(check-equal? (recursive-sum-cubes 1 3) (+ 1 8 27) "summing all cubes instead of 'identity' in a range")

(define (pi-sum a b)
  (if (> a b)
    0
    (+ (/ 1.0 (* a (+ a 2))) (pi-sum (+ a 4) b))))

(check-equal? (pi-sum 1 5) (+ (/ 1.0 3) (/ 1.0 35)) "summing a specific f(x) for each int-x in a range")

;; Abstraction for summation of series. Given an integer range of number [a,b]
;; sum the result of applying f(n) for all a < n < b where the next n is given
;; by g(a) until a > b condition is reached. So we can jump in the range not necessary
;; by +1 on a but with any valid g(a) function.
(define (sum f a g b)
  (if (> a b)
    0
    (+ (f a) (sum f (g a) g b))))

;; so For example, if our g => inc
(define (inc n) (+ n 1))

;; then we can sum cubes by
(define (sum-cubes a b)
  (sum cube a inc b))

(check-equal? (sum-cubes 1 3) (+ 1 8 27) "sum of cubes produced by passing f and g to generic summation")

;; and with an identity function, when we don't want to transform f, we need f(a) => a
(define (identity x) x)

(define (sum-integers a b)
  (sum identity a inc b))

(check-equal? (sum-integers 1 10) 55 "exactly as before")

;; another example is the integral function where f(n) => cube or anything else and the transformation g(n)
;; to have the next term for the sum is g(n) => (+ n (* n dx) (/ dx 2)) and a last multiplication by dx at the very endj
;; check with http://www.wolframalpha.com/input/?i=integrate+x%5E3+from+x%3D0+to+1

(define dx 0.01)
(define (f n) (cube n))
(define (g n) (+ n dx))

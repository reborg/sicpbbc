#lang racket/base
 
(require rackunit "1.3-procedure-three-args.scm")

(check-equal? (biggest 1 2) 2 "return the largest of two numbers")
(check-equal? (biggest-three 8 4 2) 8 "return the largest of three numbers")
(check-equal? (smaller 10 2) 2 "return the smallest of two numbers")
(check-equal? (smallest-of-three 8 4 2) 2 "return the smallest of three numbers")

(check-equal? (<= 2 8) #t "is less or equal")
(check-equal? (<= 2 2) #t "is less or equal when are the same")
(check-equal? (<= 2 1) #f "is less or equal when they are different")

(check-equal? (>= 7 1) #t "is more or equal")
(check-equal? (>= 5 5) #t "is more or equal when are the same")
(check-equal? (>= 0 3) #f "is more or equal when they are different")

(check-equal? (sum-square-biggest-two 1 2 3) 13 "three different numbers")
(check-equal? (sum-square-biggest-two 1 2 2) 8 "two numbers are the same")
(check-equal? (sum-square-biggest-two 2 2 2) 8 "they are all the same")
(check-equal? (sum-square-biggest-two 0 0 0) 0 "all zeros")

; alternative implementation from IAN

(define (sq a) 
  (* a a))

(define (min2 a b) 
  (if (< a b) a b))

(define (min3 a b c) 
  (min2 a (min2 b c)))

(define (sq2largest a b c) 
  (- (+ (sq a) (sq b) (sq c)) (sq (min3 a b c))))

(check-equal? (sq2largest 1 2 3) 13 "three different numbers")
(check-equal? (sq2largest 1 2 2) 8 "two numbers are the same")
(check-equal? (sq2largest 2 2 2) 8 "they are all the same")
(check-equal? (sq2largest 0 0 0) 0 "all zeros")

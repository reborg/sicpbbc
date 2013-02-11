#lang racket/base
(require rackunit "1.2.2-tree-process.scm")

;; poor performing tree-like process

(check-equal? (poor-fib 5) 5 "Fibonacci 5th element should be 5")
(check-equal? (poor-fib 6) 8 "Fibonacci 6th element should be 8")
(check-equal? (poor-fib 7) 13 "Fibonacci 7th element should be 13")

;; tree-process transformed into linear

(check-equal? (better-fib 5) 5 "Better Fibonacci 5th element should be 5")
(check-equal? (better-fib 6) 8 "Better Fibonacci 6th element should be 8")
(check-equal? (better-fib 7) 13 "Better Fibonacci 7th element should be 13")

;; counting change

(check-equal? (count-change 100) 292 "There are 292 different ways to change 100 cents")

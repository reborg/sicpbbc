#lang racket/base
(require rackunit "1.11-function-tree.scm")

(check-equal? (func-tree 0) 0     "Func-tree of 0 should be 0")
(check-equal? (func-tree 1) 1     "Func-tree of 1 should be 1")
(check-equal? (func-tree 2) 2     "Func-tree of 2 should be 2")
(check-equal? (func-tree 3) 4     "Func-tree of 3 should be 4")
(check-equal? (func-tree 4) 11    "Func-tree of 4 should be 11")
(check-equal? (func-tree 5) 25    "Func-tree of 5 should be 25")
(check-equal? (func-tree 6) 59    "Func-tree of 6 should be 59")
(check-equal? (func-tree 7) 142   "Func-tree of 7 should be 142")
(check-equal? (func-tree 8) 335   "Func-tree of 8 should be 335")
(check-equal? (func-tree 9) 796   "Func-tree of 9 should be 796")
(check-equal? (func-tree 10) 1892 "Func-tree of 10 should be 1892")

(check-equal? (func-linear 0) 0     "Func-linear of 0 should be 0")
(check-equal? (func-linear 1) 1     "Func-linear of 1 should be 1")
(check-equal? (func-linear 2) 2     "Func-linear of 2 should be 2")
(check-equal? (func-linear 3) 4     "Func-linear of 3 should be 4")
(check-equal? (func-linear 4) 11    "Func-linear of 4 should be 11")
(check-equal? (func-linear 5) 25    "Func-linear of 5 should be 25")
(check-equal? (func-linear 6) 59    "Func-linear of 6 should be 59")
(check-equal? (func-linear 7) 142   "Func-linear of 7 should be 142")
(check-equal? (func-linear 8) 335   "Func-linear of 8 should be 335")
(check-equal? (func-linear 9) 796   "Func-linear of 9 should be 796")
(check-equal? (func-linear 10) 1892 "Func-linear of 10 should be 1892")

;; while with Fib Fib(n) is the sum of the previous two Fibs, here it is
;; the previous, the previuos previous times 2, the previous previous previous times 3.
;; With iterative Fib I was adding

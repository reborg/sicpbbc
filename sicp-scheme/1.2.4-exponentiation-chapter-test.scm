#lang racket/base
(require rackunit "1.2.4-exponentiation-chapter.scm")

(check-equal? (exp-1 2 2) 4 "2^2 should be four")
(check-equal? (exp-1 2 100) 1267650600228229401496703205376 "some big number")
(check-equal? (exp-2 2 2) 4 "it works just the same linear iterative")
(check-equal? (exp-2 2 10) 1024 "some big number")
(check-equal? (exp-3 2 3) 8 "it works just the same by aggregating intermediate products")
(check-equal? (exp-3 2 4) 16 "2^4 is 16")

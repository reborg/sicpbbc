#lang racket/base
(require rackunit "1.16-exp-iterative.scm")

(check-equal? (ex 2 3) 8 "it works?")
(check-equal? (ex 2 4) 16 "it works!")

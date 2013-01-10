#lang racket/base
(require rackunit "1.9-iter-recur-process.scm")

(check-equal? (plus-1 2 3) 5 "")
(check-equal? (plus-2 2 3) 5 "")

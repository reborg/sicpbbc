#lang racket/base
(require rackunit "1.1.7-square-root-newton.scm")

(check-equal? (round (* 100000 (sqrt-iter 1.0 2))) 141422.0 "able to give correct results up to the 3th digit by summing delta")

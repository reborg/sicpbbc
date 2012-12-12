#lang racket/base
(require rackunit "1.6-if-as-cond.scm")

(check-equal? (new-if (= 2 3) 0 5) 5 "the new-if is working great")
(check-equal? (new-if (= 1 1) 0 5) 0 "even the else clause is working")

; this is now going infinite loop!
;(check-equal? (round (* 100000 (sqrt-iter 1.0 2))) 141422.0 "and now the new sqrt")

(define (round-todec decimal float)
  (round (* (expt 10 decimal) float)))

(check-equal? 
  (round-todec 2 
               ((sqrt-improver (sqrt-improver (sqrt-improver recursion-ender))) 1.0 2)) 142.0 "and now the new sqrt")

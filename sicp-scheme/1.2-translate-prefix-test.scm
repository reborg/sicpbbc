#lang racket/base
 
(require rackunit "1.1-evaluation.scm")

(define translate-1.2 (/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 3))))) 
                         (* 3 (- 6 2) (- 2 7))))
(check-equal? translate-1.2 -23/90 "Exercise 1.2 translate the following into prefix")

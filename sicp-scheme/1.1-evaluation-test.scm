#lang racket/base
 
(require rackunit "1.1-evaluation.scm")

(check-equal? (+ 5 3 4) 12 "addition")
(check-equal? (- 9 1) 8 "subtraction")
(check-equal? (/ 6 2) 3 "divide")
(check-equal? (+ (* 2 4) (- 4 6)) 6 "nested combinations")
(define a 3)
(check-equal? a 3 "simple computation object reference")
(define b (+ a 1))
(check-equal? b 4 "reference to a combination of previous reference")
(check-equal? (+ a b (* a b)) 19 "nested combination of reference")
(check-equal? (not #t) #f "true and false literals")
(check-equal? (= a b) #f "predicates is an expression that returns true or false.")
(check-equal? (if (and (> b a) (< b (* a b))) b a) 4 "nested conditionals")

(define cond-1 (cond ((= a 4) 6)
                     ((= b 4) (+ 6 7 a))
                     (else 25)))
(check-equal? cond-1 16 "nested conditionals")
(define undef-cond (cond ((= a 4) 6)
                         ((= b 8) (+ 6 7 a))))
(check-equal? (void? undef-cond) #t "undefined conditional?")
(check-equal? (+ 2 (if (> b a) b a)) 6 "more nested conditionals")

(define cond-2 (* (cond ((> a b) a) 
                        ((< a b) b)
                        (else -1)) 
                  (+ a 1)))
(check-equal? cond-2 16 "cond used in combination")

(define translate-1.2 (/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 3))))) 
                         (* 3 (- 6 2) (- 2 7))))
(check-equal? translate-1.2 -23/90 "Exercise 1.2 translate the following into prefix")
#lang racket
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (pi-sum a b)
  (sum (lambda (x) (/ 1.0 (* x (+ x 2))))
       a
       (lambda (x) (+ x 4))
       b))
(define (id x) x)
(define (test f a)
  (f a))
;; exercise 1.3.4
;;What happens if we (perversely) ask the interpreter to evaluate the combination(f f)?Explain.

(define (f g) (g 2))
(define (fid g) (g id))

;;(define (square x) (* x x))

;;(f square)

;;(f (lambda (z) (* z (+ z 1))))

;;(f f)
;;(id id)

(define x 3)
(+ (let ((y 3))
     (+ x (* x 10)))
   x)

(define z  2)
( let ((z 3)
       (y  (+ 2 z)))
   (* z y))




(provide test pi-sum)
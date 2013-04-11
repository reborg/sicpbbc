#lang racket/base

(define (h a b n) (/ (- b a) n))

(define (yk f a b n) 
  (f (+ a (* n (h a b n)))))
;; try outer function
(define (bart f a b n)
  (if (= n 0)
    0
    (+ (if 
         (even? n) 
         (* 2 (yk f a b n)) 
         (* 4 (yk f a b n))) 
       (bart f a b (- n 1)))))

(provide bart h yk)

;;(/ (* h (y0 +4y1 +2y2 +4y3 +2y4 +...+2yn−2 +4yn−1 + yn)) 3)
;;where h=(b−a)/n
;;and yk =f(a+kh)

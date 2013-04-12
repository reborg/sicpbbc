#lang racket/base

(define (h a b n) (/ (- b a) n))

(define (y f a b n) 
  (if (= n 0) 0
  (f (+ a (* n (h a b n))))))
;; cube 0 1 100
(define (bart f a b ncurrent nlimit)
  (if (= ncurrent nlimit)
     (+ (y f a b ncurrent) 0 )
    (+ (if 
         (even? ncurrent) 
         (* 2.0 (y f a b ncurrent)) 
         (* 4.0 (y f a b ncurrent))) 
       (bart f a b (+ ncurrent 1.0) nlimit))))


(define( simpson f a b n)
  (* (/ (h a b n ) 3) (bart f a b 1 n))
  )
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x)
    (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b) dx))
(provide integral simpson h y)

;;(/ (* h (y0 +4y1 +2y2 +4y3 +2y4 +...+2yn−2 +4yn−1 + yn)) 3)
;;where h=(b−a)/n
;;and yk =f(a+kh)
;; so y0 = cube(a+0h)

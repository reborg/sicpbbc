;; ex 1.8
(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))
  

(define (good-enough? guess oldguess x)
  (< (abs (/ (- guess oldguess) guess))  0.001))

(define (cuberoot-iter guess oldguess x)
  (if (good-enough? guess oldguess x)
          guess
          (cuberoot-iter (improve guess x) guess
                    x)))

(define (cuberoot x)
  (cuberoot-iter 1.0 0 x))


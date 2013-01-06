;; ex 1.10

;; Ackermann's function
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))


; > (A 1 10)
; 1024

; > (A 2 4)
; 65536

; > (A 3 3)
; 65536

(define (f n) (A 0 n))

(define (g n) (A 1 n))

(define (h n) (A 2 n))


;
; (f n) = 2n
;
; (g n) =  { 0, if n = 0
;            2^n if n != 0
;
; (h n) = { 0, if n = 0
;           2^(h (- n 1)) if n != 0








            
       
;; ex 1.9

;; Procedure 1
;; This is a recursive process defined by a recursive procedure
;; executing in expanding and contracting space, as evidenced by
;; its shape
(define (+ a b)
  (if (= a 0) b
      (inc (+ (dec a) b))))

; >(+ 4 5)
; >(inc (+ 3 5))
; >(inc (inc (+ 2 5)))
; >(inc (inc (inc (+ 1 5))))
; >(inc (inc (inc (inc (+ 0 5)))))
; >(inc (inc (inc (inc 5))))
; >(inc (inc (inc 6)))
; >(inc (inc 7))
; >(inc 8)
; >9


   
   
;; Procedure 2
;; This is an iterative process defined by a recursive procedure
;; executing in constant space, as evidenced by its shape
(define (+ a b)
  (if (= a 0) b
      (+ (dec a) (inc b))))

; >(+ 4 5)
; >(+ 3 6)
; >(+ 2 7)
; >(+ 1 8)
; >(+ 0 9)
; >9
      
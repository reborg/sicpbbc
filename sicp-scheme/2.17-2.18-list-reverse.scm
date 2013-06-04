#lang racket

(define (last-pair  the-list )
  (if
   
   (< (length the-list) 2)
      the-list
      (last-pair (cdr the-list))
  )
  
 )

(define (list-adder orig-list new-list)
     (if (= 0 (length orig-list)) new-list
     
     (list-adder (cdr orig-list) (cons (car orig-list) new-list))
  )
)

(define (list-ref items n)
      (if (= n 0)
          (car items)
          (list-ref (cdr items) (- n 1))))

(define(list-adder-iter orig-list new-list index)
  (if (= (length orig-list) index) 
      new-list
      (list-adder-iter 
       orig-list 
       (cons 
        (list-ref orig-list index) 
        new-list) 
       (+ index 1 ))))

(define (reverse orig-list)
  (list-adder-iter orig-list (list) 0)
)

(define (reverse-recursive orig-list)
  (list-adder orig-list (list))
  )
 

(reverse (list 1 2 3 4 5 6 ))
(reverse-recursive (list 1 2 3 4 5 6))
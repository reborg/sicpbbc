#lang racket/base

(define (poor-fib n) 
  ;;(displayln "poor-fib(5) is displaying this 15 times")
  (cond 
    ((= n 0) 0) 
    ((= n 1) 1)
    (else 
      (+ (poor-fib (- n 1)) 
         (poor-fib (- n 2))))))

(define (fib-iter a b count) 
  ;;(displayln "better-fib(n) is displaying this n+1 times")
  (if (= count 0) 
    b 
    (fib-iter (+ a b) a (- count 1))))

(define (better-fib n) 
  (fib-iter 1 0 n))

(define (count-change amount) 
  (cc amount 5))

(define (cc amount kinds-of-coins) 
  (cond 
    ((= amount 0) 1)
    ((or (< amount 0) (= kinds-of-coins 0)) 0) 
    (else (+ 
            (cc amount (- kinds-of-coins 1)) 
            (cc (- amount (first-denomination kinds-of-coins)) kinds-of-coins)))))

(define (first-denomination kinds-of-coins) 
  (cond 
    ((= kinds-of-coins 1) 1) 
    ((= kinds-of-coins 2) 5) 
    ((= kinds-of-coins 3) 10)
    ((= kinds-of-coins 4) 25) 
    ((= kinds-of-coins 5) 50)))

(provide poor-fib better-fib count-change)

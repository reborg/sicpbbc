(ns sicp-clojure.1-11-rewrite-iterative-test
  (:use sicp-clojure.1-11-rewrite-iterative
        midje.sweet))

(facts "when < 3 it returns the first argument"
       (fact "it returns the first argument for negatives" (f -2 0 0 -1) => -2)
       (fact "it returns the first argument for zero" (f -1 0 0 0) => -1)
       (fact "it returns the first argument for positives" (f 0 0 0 1) => 0)
       (fact "it returns the first argument for less than three" (f 1 0 0 2) => 1))

(facts "when >= 3"
       (fact "for n=3, it sums up f(2), two times f(1) and three times f(0)"
             (f 2 1 0 3) => (+ 2 2 0))
       (fact "for n=4, it sums up f(3), two times f(2) and three times f(1)"
             (f 2 1 0 4) => (+ 4 4 3))
       (fact "for n=5, it sums up f(4), two times f(3) and three times f(2)"
             (f 2 1 0 5) => (+ 11 8 6))
       (fact "for n=6, it sums up f(5), two times f(4) and three times f(3)"
             (f 2 1 0 6) => (+ 25 22 12)))

(facts "when >= 3 I can just pass in the single number"
       (fact "for n=3, it sums up f(2), two times f(1) and three times f(0)"
             (f-recur 3) => (+ 2 2 0))
       (fact "for n=4, it sums up f(3), two times f(2) and three times f(1)"
             (f-recur 4) => (+ 4 4 3)))

(ns sicp-clojure.core-test
  (:use [sicp-clojure.core])
  (:use [clojure.math.numeric-tower :as math])
  (:use [midje.sweet]))

(facts "1.1.1 expressions"
       (fact "the intepreter responds with the simple expression"
             486 => 486)
       (fact "compound expressions are also called combinations, where the leftmost element is the operator"
             (+ 137 349) => 486
             (- 1000 334) => 666)
       (fact "the prefix notation has the advantage that it can accumulate operands on the right"
             (+ 1 2 3 4) => 10)
       (fact "combinations can be nested, that is, combinations of combinations, thanks to the prefix operator"
             (+ (- 10 5) (+ 2 2)) => 9)
       (fact "while something like this can be confusing for humans, it's not for the computer"
             (+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6)) => 57)
       (fact "but there is identation to alleviate the confusion"
             (+ (* 3 
                  (+ (* 2 4) 
                    (+ 3 5))) 
               (+ (- 10 7) 6)) => 57))

(facts "1.1.2 naming"
       (fact "def is the association of a name to a computational object"
             (let [lenght 2]
               (* lenght lenght) => 4)))

(facts "1.7 Solution"
       (fact "The revised end tests for Newton's square root function has an accuracy to 5 decimal places"
             (< (math/abs (- (math/sqrt 0.01)
                             (sqrt-iter 1.0 0.01)))
                0.000001) => true))
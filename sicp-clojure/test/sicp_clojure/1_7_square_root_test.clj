(ns sicp-clojure.1-7-square-root-test
  (:use [sicp-clojure.1-7-square-root]
        [clojure.math.numeric-tower :as math]
        [midje.sweet]))

(facts "1.7 Solution"
       (fact "The revised end tests for Newton's square root function has an accuracy to 5 decimal places"
             (< (math/abs (- (math/sqrt 0.01)
                             (sqrt-iter 1.0 0.01)))
                0.000001) => true))

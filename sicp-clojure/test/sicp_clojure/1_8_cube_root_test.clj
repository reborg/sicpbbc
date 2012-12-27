(ns sicp-clojure.1-8-cube-root-test
  (:use [sicp-clojure.1-8-cube-root]
        [clojure.math.numeric-tower :as math]
        [midje.sweet]))

(facts "Testing"
       (fact "simple test"
             (defn accurate-within?
               [actual expected accuracy]
               (< (math/abs (- actual
                               expected))
                  accuracy))
             
             (accurate-within? (math/expt 27 (/ 1 3))
                               (cbrt 27)
                               0.00001) => true))

(ns sicp-clojure.1-8-cube-root-test
  (:use [sicp-clojure.1-8-cube-root]
        [midje.sweet]
        [sicp-clojure.utils]))

(facts "1.8 Solution"
       (fact "The cube root function must be accurate to within 5 decimal places"
             (accurate-within? (cube-root 27)
                               (cbrt 27)
                               0.000001) => true)
       (fact "The cube root function is accurate to within 1 decimal place for numbers less than 1"
             (accurate-within? (cube-root 0.01)
                               (cbrt 0.01)
                               0.01) => true)
       (fact "The cube root function is not accurate to 5 decimal places for numbers less than 1"
             (accurate-within? (cube-root 0.01)
                               (cbrt 0.01)
                               0.000001) => false
             (accurate-within? (cube-root 0.00009)
                               (cbrt 0.00009)
                               0.000001) => false
             (accurate-within? (cube-root 0.000027)
                               (cbrt 0.000027)
                               0.000001) => false))

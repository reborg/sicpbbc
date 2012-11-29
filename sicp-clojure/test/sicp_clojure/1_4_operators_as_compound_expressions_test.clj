(ns sicp-clojure.1-4-operators-as-compound-expressions-test
  (:use [sicp-clojure.core])
  (:use [midje.sweet]))

(defn a-plus-abs-b [a b]
  ((if (> b 0) + -) a b))

(defn plus [] +)

(facts "I can return operators from functions "
       (fact "returning +"
             ((plus) 1 1) => 2)
       (fact "operator selection based on arguments"
             (a-plus-abs-b 1 -2) => 3))

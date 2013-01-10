(ns sicp-clojure.1-9-generated-processes-test
  (:use sicp-clojure.1-9-generated-processes
        midje.sweet))

(facts "1.9 Solution"
       (fact "The redefined addition function generates a recursive process"
             (my-plus 3 9) => 12
             (my-plus 4 5) => 9)
       (fact "Another plus is recurring without recur. No tail recursion means stack overflow possible."
             (another-plus 10 8) => 18))

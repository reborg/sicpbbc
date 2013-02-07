(ns sicp-clojure.1-14-coin-change-growth-test
  (:use sicp-clojure.1-14-coin-change-growth
        midje.sweet))

(facts "printing recursion details as a side effect"
       (fact "nesting (space) is incrementing proportionally, while
             computation steps are exponentional"
             (count-change 11) => 4))

(ns sicp-clojure.chapters.1-2-5-gcd-test
  (:use sicp-clojure.chapters.1-2-5-gcd)
  (:use midje.sweet))

(facts "euclid's algorithm for GCD"
       (fact "example case in the chapter"
             (gcd 206 40) => 2))

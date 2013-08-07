(ns sicp-clojure.chapters.1-2-5-gcd)

(defn gcd [a b]
  "Calculates GCD between a and b using Euclid's algorithm"
  (if (= 0 b)
    a
    (recur b (mod a b))))

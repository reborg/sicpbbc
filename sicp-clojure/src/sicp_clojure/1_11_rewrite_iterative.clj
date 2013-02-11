(ns sicp-clojure.1-11-rewrite-iterative)

(defn f
  "A function of 2 1 0 as base case and a counter"
  [times-one times-two times-three counter]
  (if (< counter 3)
    times-one
    (f (+ (* 1 times-one) (* 2 times-two) (* 3 times-three)) times-one times-two (- counter 1))))

(defn f-recur 
  "A controlling function for the base cases"
  [n]
  (if (< n 3)
    n
    (f 2 1 0 n)))

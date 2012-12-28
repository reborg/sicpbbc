(ns sicp-clojure.1-7-square-root
  (:require [clojure.math.numeric-tower :as math]))

;; Solution 1.7

(defn sqrt-iter
  [guess x]
  (let [good-enough? (fn [guess next-guess]
                       (< (/ (math/abs (- guess next-guess))
                             guess)
                          0.001))
        average      (fn [x y]
                       (/ (+ x y) 2))
        improve      (fn [guess]
                       (average guess (/ x guess)))]
    (loop [current-guess guess]
      (if (good-enough? current-guess
                        (improve current-guess))
        current-guess
        (recur (improve current-guess))))))

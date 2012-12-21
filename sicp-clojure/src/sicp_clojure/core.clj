(ns sicp-clojure.core
  (:require [clojure.math.numeric-tower :as math]))

;; Solution 1.7

(defn good-enough?
  [guess next-guess]
  (< (/ (math/abs (- guess next-guess)) guess) 0.001))

(defn average
  [x y]
  (/ (+ x y) 2))

(defn improve
  [guess x]
  (average guess (/ x guess)))

(defn sqrt-iter
  [guess x]
  (loop [current-guess guess]
      (if (good-enough? current-guess
                        (improve current-guess x))
        current-guess
        (recur (improve current-guess x)))))

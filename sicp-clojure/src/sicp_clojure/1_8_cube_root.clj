(ns sicp-clojure.1-8-cube-root
  (:require [clojure.math.numeric-tower :as math]))

(defn cbrt-iter
  [guess x]
  (let [good-enough? (fn [guess] (< (math/abs (- (* guess guess guess) x))
                                   0.001))
        improve      (fn [guess] (/ (+ (/ x
                                         (* guess guess))
                                      (* 2 guess))
                                   3))]
    (loop [current-guess guess]
      (if (good-enough? current-guess)
        current-guess
        (recur (improve current-guess))))))

(defn cbrt
  [x]
  (cbrt-iter 1.0 x))

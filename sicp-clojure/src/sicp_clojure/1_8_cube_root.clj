(ns sicp_clojure.1_8_cube_root
  (:require [clojure.math.numeric-tower :as math]))

(defn cbrt-iter
  [guess x]
  (let [good-enough? (fn [guess x]
                       (< (math/abs (- (* guess guess) x))
                          0.001))
        improve      (fn [guess x]
                       (/ (+ (/ x
                                (* guess guess))
                             (* 2 guess))
                          3))]
    (loop [current-guess guess]
      (if (good-enough? current-guess x)
        current-guess
        (recur (improve current-guess x))))))

(defn cbrt
  [x]
  (cbrt-iter 1.0 x))

(ns sicp-clojure.1-8-cube-root
  (:require [clojure.math.numeric-tower :as math])
  (:use [sicp-clojure.utils]))

(defn cbrt-iter
  [guess x]
  (let [good-enough? (fn [guess] (accurate-within? (cube guess) x 0.001))
        improve      (fn [guess] (/ (+ (/ x
                                         (square guess))
                                      (* 2 guess))
                                   3))]
    (loop [current-guess guess]
      (if (good-enough? current-guess)
        current-guess
        (recur (improve current-guess))))))

(defn cube-root
  [x]
  (math/expt x (/ 1 3)))

(defn cbrt
  [x]
  (cbrt-iter 1.0 x))

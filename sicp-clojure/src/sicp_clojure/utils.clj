(ns sicp-clojure.utils
  (:require [clojure.math.numeric-tower :as math]))

(defn cube
  [x]
  (* x x x))

(defn cube-root
  [x]
  (math/expt x (/ 1 3)))

(defn square
  [x]
  (* x x))

(defn accurate-within?
  [actual expected accuracy]
  (< (math/abs (- actual
                  expected))
     accuracy))

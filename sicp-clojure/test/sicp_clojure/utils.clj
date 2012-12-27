(ns sicp-clojure.utils
  (:require [clojure.math.numeric-tower :as math]))

(defn accurate-within?
  [actual expected accuracy]
  (< (math/abs (- actual
                  expected))
     accuracy))

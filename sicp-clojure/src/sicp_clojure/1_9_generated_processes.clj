(ns sicp-clojure.1-9-generated-processes)

(defn my-plus
  "This is a redefinition of the + function written as a
   linear iterative process."
  [a b]
  (loop [x a
         y b]
    (if (= x 0)
      y
      (recur (dec x) (inc y)))))

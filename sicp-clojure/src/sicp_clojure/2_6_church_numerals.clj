(ns sicp-clojure.2-6-church-numerals)

(defn zero
  "Returns a function of p of a function of x that just returns x as identity"
  [p]
  (fn [x] x))

(defn one
  "Returns a function of a function f that invokes f over an argument once"
  [f]
  (fn [x] (f x)))

(defn two
  "Returns a function of a function f that invokes f over an argument once"
  [f]
  (fn [x] (f (f x))))

(defn add-one
  "Add one to the argument passed using functions to implement numbers"
  [n]
  (fn [f] 
    (fn [x] 
      (f ((n f) x)))))

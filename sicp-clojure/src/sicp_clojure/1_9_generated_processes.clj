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

;; The following scheme function can't be ported to Clojure
;;
;; (define (+ a b)
;;   (if (= a 0)
;;       b
;;       (inc (+ (dec a ) b))))
;;
;; The reason is because in Clojure, you need to have the
;; recursion point be at the tail end of the function. Here
;; inc is the tail end of the function and we call the +
;; function inside the argument of the inc function. We
;; would not be able to do this in Clojure: we can't call
;; recur inside the inc function.

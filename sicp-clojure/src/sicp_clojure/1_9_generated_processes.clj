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

;; This plus implementaiton is not tail-recursive and as such recur
;; cannot be used to make this an iterative process. It will blow the stack for
;; sufficiently big values of a.
(defn another-plus [a b]
  (if (= a 0)
      b
      (inc (another-plus (dec a) b))))

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
;; RENZO: true, but you are not forced to use recur. See above.

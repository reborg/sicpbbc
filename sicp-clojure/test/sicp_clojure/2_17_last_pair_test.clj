(ns sicp-clojure.2-17-last-pair-test
  (:use midje.sweet))

(unfinished size)

(defn last-pair
  "Return the list that contains the last element of the input list."
  [items]
  (if (< (count items) 2)
    items
    (recur (rest items))))

(defn list-ref
  "Returns the nth element from a collection or empty list if nth element is not existing"
  [items n]
  (if (= 0 n)
    (first items)
    (recur (rest items) (dec n))))

(facts "extracting a list that contains the last element of another list"
       (fact "last element of an empty list is an empty list"
             (last-pair '()) => '())
       (fact "last element of a singleton list is the same singleton list"
             (last-pair '(1)) => '(1))
       (fact "last element of a bigger list is the last element"
             (last-pair '(1 2 3)) => '(3)))

(facts "returning the nth element of a list"
       (fact "the nth element of an empty list"
             (list-ref '() 3) => nil)
       (fact "the first element of singleton list"
             (list-ref '(1) 0) => 1)
       (fact "the first element of singleton list"
             (list-ref '(1 2) 1) => 2))

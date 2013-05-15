(ns sicp-clojure.2-1-3-what-is-meant-by-data-test
  (:use midje.sweet))

(defn cons
  "Returns a function obeying the car cdr contract"
  [x y]
  (fn [selector] (cond 
                   (= :debug selector) (str "a fn(x) returning " x " on car and " y " on cdr") 
                   (= 0 selector) x 
                   (= 1 selector) y)))

(defn car
  "Retrieve the first element of a pair created with a cons made of functions"
  [pair]
  (pair 0))

(defn cdr
  "Retrieve the last element of the pair function"
  [pair]
  (pair 1))

(facts "a pair structure made only of functions"
       (fact "it cons together two things by returning a function compatible with car cdr"
             ((cons 1 2) :debug) => "a fn(x) returning 1 on car and 2 on cdr"
             ((cons 4 8) :debug) => "a fn(x) returning 4 on car and 8 on cdr")
       (fact "it extracts the first element of the pair"
             (car (cons 2 4)) => 2)
       (fact "it extracts the last element of the pair"
             (cdr (cons 9 1)) => 1))

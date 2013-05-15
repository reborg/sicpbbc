(ns sicp-clojure.2-6-church-numerals-test
  (:use sicp-clojure.2-6-church-numerals)
  (:use midje.sweet))

(facts "zero number as function"
       (fact "it returns a function of p that does nothing with that argument"
             (zero -) => (zero +))
       (fact "it acts as an identity when the returned function is invoked, still not using the first f"
             ((zero -) 119) => 119
             ((zero *) 12) => 12
             ((zero /) 9) => 9))

(fact "contract for number one as functions"
      (fact "it invokes the given function over the given argument once"
            ((one inc) 1) => (inc 1)))

(fact "contract for number two as functions"
      (fact "it invokes the given function over the given argument twice"
            ((two inc) 0) => (inc (inc 0))))

(facts "generating successive church numerals"
       (fact "it generates the successive church numeral"
             (((add-one zero) inc) 0) => ((one inc) 0)))

(ns sicp-clojure.1-14-coin-change-growth) 

(defn first-denomination [kinds-of-coins]
  (cond (= kinds-of-coins 1) 1 
        (= kinds-of-coins 2) 5 
        (= kinds-of-coins 3) 10
        (= kinds-of-coins 4) 25 
        (= kinds-of-coins 5) 50))

(defn cc [amount kinds-of-coins identation]
  (do 
    (cond (= amount 0)
            (do (println (str (apply str (repeat identation "-")) "> (cc " amount " " kinds-of-coins " " identation ") returning 1"))
              1)
          (or (< amount 0) (= kinds-of-coins 0))
            (do (println (str (apply str (repeat identation "-")) "> (cc " amount " " kinds-of-coins " " identation ") returning 0"))
              0)
          :else (do
                  (println (str (apply str (repeat identation "-")) "> (cc " amount " " kinds-of-coins " " identation ")"))
                  (println (str ";(+ " 
                                "(cc " amount " " (- kinds-of-coins 1) " " (inc identation) ") "
                                "(cc " (- amount (first-denomination kinds-of-coins)) " " kinds-of-coins " " (inc identation) "))"))
                  (+ (cc amount (- kinds-of-coins 1) (inc identation)) 
                   (cc (- amount (first-denomination kinds-of-coins)) kinds-of-coins (inc identation)))))))

(defn count-change [amount]
  (cc amount 5 0))

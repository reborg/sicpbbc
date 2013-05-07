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
          1
          (or (< amount 0) (= kinds-of-coins 0))
          0
          :else (do
                  (+ (cc amount (- kinds-of-coins 1) (inc identation)) 
                     (cc (- amount (first-denomination kinds-of-coins)) kinds-of-coins (inc identation)))))))

(defn count-change [amount]
  (cc amount 5 0))

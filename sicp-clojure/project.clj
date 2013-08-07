(defproject sicp-clojure "0.1.0-SNAPSHOT"
  :description "Clojure implementation of the SICP exercises."
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.5.1"]
                 [org.clojure/math.numeric-tower "0.0.2"]]
  :plugins [[lein-midje "3.1.1"]]
  :profiles {:dev {:dependencies [[midje "1.5.1"]
                                  [com.stuartsierra/lazytest "1.2.3"]]
                   :repositories {"stuart" "http://stuartsierra.com/maven2"}}})

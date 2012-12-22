(defproject sicp-clojure "0.1.0-SNAPSHOT"
  :description "Clojure implementation of the SICP exercises."
  :url "http://example.com/FIXME"
  :license {:name "Eclipse Public License"
            :url "http://www.eclipse.org/legal/epl-v10.html"}
  :dependencies [[org.clojure/clojure "1.4.0"]
                 [org.clojure/math.numeric-tower "0.0.2"]]
  :profiles {:dev {:dependencies [[midje "1.4.0"]]}}
  :plugins [[lein-midje "2.0.0-SNAPSHOT"]])

#lang racket/base
(require rackunit "1.8-cube-root.scm")

(check-= (cube-root 1.0 1000) 10.0 1e-09 "cube root of 100 should be 10")

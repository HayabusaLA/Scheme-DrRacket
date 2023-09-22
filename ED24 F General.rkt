#lang racket

; Codigo para calcular la formula general, se pueden sustituir los valores en base a la necesidad de cada caso

(define a 5)
(define b 2)
(define c 8)

(define x (/ (+ (- b) (sqrt (- (expt b 2) (* 4 a c)))) (* 2 a)))

(display x)
(newline)

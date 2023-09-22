#lang racket

; Diversas funciones para obtener un valor de Fahrenheit a Celsius, obtener raices o detectar el IMC.

; Ejercicio 1, Fahrenheit a Celsius 
(define (fahrenheit-to-celsius f)
  (/ (* (- f 32) 5) 9))

(display "Ejercicio 1: F a C")(newline)
(display (fahrenheit-to-celsius 212.0))(newline)
(display (fahrenheit-to-celsius 32.0))(newline)
(display (fahrenheit-to-celsius -40.0))(newline)(newline)

; Ejercicio 2, -1, 1 o 0
(define (sign n)
  (cond
    ((< n 0) -1)
    ((> n 0) 1)
    (else 0)))

(display "Ejercicio 2")(newline)
(display (sign -5))(newline)
(display (sign 10))(newline)
(display (sign 0))(newline)(newline)

; Ejercicio 3, Roots
(define (roots a b c)
  (define discriminant (- (* b b) (* 4 a c)))
  (cond
    ((< discriminant 0) 'no-real-roots)
    ((= discriminant 0) (/ (- (- 0 b) (sqrt discriminant)) (* 2 a)))
    (else
     (list (/ (+ (- 0 b) (sqrt discriminant)) (* 2 a))
           (/ (- (- 0 b) (sqrt discriminant)) (* 2 a))))))

(display "Ejercicio 3: Roots")(newline)
(display (roots 2 4 2))(newline)
(display (roots 1 0 0))(newline)
(display (roots 4 5 1))(newline)(newline)

; Ejercicio 4, BMI
(define (bmi weight height)
  (define bmi-value (/ weight (* height height)))
  (cond
    ((< bmi-value 20) 'underweight)
    ((and (>= bmi-value 20) (< bmi-value 25)) 'normal)
    ((and (>= bmi-value 25) (< bmi-value 30)) 'obese1)
    ((and (>= bmi-value 30) (< bmi-value 40)) 'obese2)
    ((>= bmi-value 40) 'obese3)))

(display "Ejercicio 4: BMI")(newline)
(display (bmi 45 1.7))(newline)
(display (bmi 55 1.5))(newline)
(display (bmi 76 1.7))(newline)
(display (bmi 81 1.6))(newline)
(display (bmi 120 1.6))(newline)





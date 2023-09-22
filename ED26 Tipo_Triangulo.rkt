#lang racket

; Codigo para detectar cual es el tipo de triangulo en base a sus coordenadas dadas
  
; Función para calcular la distancia entre dos puntos
(define (distancia x1 y1 x2 y2)
  (sqrt (+ (* (- x2 x1) (- x2 x1)) (* (- y2 y1) (- y2 y1)))))

(define (tipo-de-triangulo x1 y1 x2 y2 x3 y3)
  (define lado1 (distancia x1 y1 x2 y2))
  (define lado2 (distancia x2 y2 x3 y3))
  (define lado3 (distancia x3 y3 x1 y1))
  (if (or (<= (+ lado1 lado2) lado3)
          (<= (+ lado2 lado3) lado1)
          (<= (+ lado3 lado1) lado2))
      'no-es-un-triangulo
      (if (and (= lado1 lado2) (= lado2 lado3))
          'equilatero
          (if (or (= lado1 lado2) (= lado2 lado3) (= lado3 lado1))
              'isosceles
              'escaleno))))

; Ejemplo de triangulo equilatero
(define x1 0)
(define y1 0)
(define x2 1)
(define y2 0)
(define x3 0.5)
(define y3 (sqrt 3))

; Ejemplo de triangulo isosceles
; (define x1 0)
; (define y1 0)
; (define x2 0)
; (define y2 2)
; (define x3 2)
; (define y3 0)

; Ejemplo de triangulo escaleno
; (define x1 0)
; (define y1 0)
; (define x2 3)
; (define y2 0)
; (define x3 1)
; (define y3 4)

; Ejemplo de que no es un triangulo
;(define x1 0)
;(define y1 0)
;(define x2 1)
;(define y2 0)
;(define x3 2)
;(define y3 0)

(define resultado (tipo-de-triangulo x1 y1 x2 y2 x3 y3))
(cond
  ((eq? resultado 'equilatero) (display "El triángulo es equilátero."))
  ((eq? resultado 'isosceles) (display "El triángulo es isósceles."))
  ((eq? resultado 'escaleno) (display "El triángulo es escaleno."))
  ((eq? resultado 'no-es-un-triangulo) (display "Los puntos no representan un triángulo.")))



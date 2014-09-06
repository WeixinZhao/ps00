;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Module1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;Ex 1

(* 366 
   (* 24
     (* 60 60)))

;alternative expression

(* 60
   (* 60
      (* 24 366)))

;alternative expression

(* 3600 (* 24 366))            


;Ex 2
(> (/ 100 3)
   (/ (+ 100 3) 
      (+ 3 3)))

;Ex 3.
(define (f->c x) (* (- x 32) (/ 5 9)))


;Ex 4.
(define (tip bill percentage)
         (* bill percentage))     


;Ex 5.
;sq: Number -> Number
;GIVEN: a number to be squared
;RETURN: the square of the given number
;Examples:
;(sq 4) => 16
;(sq -1) => 1
(define (sq x) (* x x))


;Ex 6.
;quadroot: Number Number Number -> Number
;GIVEN: Coefficients of the quadratic equation a b c
;RETURN:One of the solution of the quadratic equation defined by the coefficiants a b c
;Examples:
;(quadroot 1 -2 1)  =>1
;(quadroot 2 -1 -1)  =>  1
(define (quadroot a b c) 
        (/ (+ (- 0 b)
              (sqrt (- (* b b)
                       (* 4 (* a c)))))
           (* 2 a)))

;Ex. 7
(define (circumference r) (* (* 2 pi) r))

;Ex. 8
;circle-area : Number Number -> Number
;GIVEN: the radius r of a circle 
;RETURN: the area included in the circle
;Examples
;(circle-area 1) =>#i3.141592653589793
;(circle-area 5) =>#i78.53981633974483
(define (circle-area r) (* (* pi r) r))


;Ex. 9
;even-number? : Number Number -> Boolean
;GIVEN; a number
;RETURN; a boolean value that identity if the given number is divisible by 2
;Examples:
;(even-number? 3) =>false
;(even-number? -2) => true

(define (even-number? x)
           (cond 
             [(= (remainder x 2) 0) true]
             [else false]))
    

;Ex. 10
;takes three numbers as arguments and returns the sum of the two larger numbers
;sumoftwolarger: Number Number Number -> Number
;GIVEN; three numbers a b c
;RETURN: he sum of the two larger numbers
;Examples: 
;(sumoftwolarger 2 3 4) => 7
;(sumoftwolarger 3 -1 -2) =>2
(define (sumoftwolarger a b c)
         (cond
           [(and (< a b) (< a c)) (+ b c)]
           [(and (< b a) (< b c)) (+ a c)]
           [else (+ a b)]))
           

 
              
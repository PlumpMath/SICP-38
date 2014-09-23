; point constructor
(define (make-point x y)
  (cons x y))

; point selector
(define (x-point p)
  (car p))
(define (y-point p)
  (cdr p))
  
; rectangle constructor
(define (make-rectangle p1 p2)
  (cons p1 p2))
(define (top-left r)
  (car r))
(define (bottom-right r)
  (cdr r))

     
(define (width-rectangle r)
  (- (x-point (bottom-right r)) (x-point (top-left r))))
(define (height-rectangle r)
  (- (y-point (bottom-right r)) (y-point (top-left r))))
(define (perimeter r)
  (* 2 (+ (width-rectangle r) (height-rectangle r))))
(define (area r)
 (* (width-rectangle r) (height-rectangle r)))


(define rec (make-rectangle (make-point 1 1) (make-point 4 3)))

; perimeter 10
(perimeter rec)

; area 6
(area rec)

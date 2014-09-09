(define (make-segment start end) (cons start end))

(define (start-segment segment) (car segment))

(define (end-segment segment) (cdr segment))

(define (make-point x y) (cons x y))

(define (x-point point) (car point))

(define (y-point point) (cdr point))

(define (middle x y) (+ x (- y)))
(define (midpoint segment) (make-point (middle (x-point (start-segment segment)) (x-point (end-segment segment)))
                                       (middle (y-point (start-segment segment)) (y-point (end-segment segment)))))
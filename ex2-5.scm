(define (factor-count n factor) (if (= (modulo n factor) 0) (+ 1 (factor-count (/ n factor) factor)) 0))

(define (icons a b) (* (expt 2 a) (expt 3 b)))

(define (icar n) (factor-count n 2))

(define (icdr n) (factor-count n 3))
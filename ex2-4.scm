(define (acons x y)
  (lambda (m) (m x y)))

(define (acar z)
  (z (lambda (p q) p)))

(define (acdr z) (z (lambda (p q) q)))
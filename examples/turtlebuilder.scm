(colour #(0.5 0.5 0.5))

(define (poly)
	(turtle-prim 1)
	(turtle-vert)
	(turtle-move 1)
	(turtle-turn (vector 0 90 0))
	(turtle-vert)
	(turtle-move 1)
	(turtle-turn (vector 0 90 0))
	(turtle-vert)
	(turtle-move 1)
	(turtle-vert)
	(turtle-turn (vector 0 180 0))
	(hint-none)
	(hint-wire)
	(turtle-build))

(define (shape n a)
	(poly)
	(display (/ 360 a))(newline)
	(turtle-turn (vector (/ 360 a) 0 0))
	(if (eq? n 0)
		1
		(shape (- n 1) a)))

(backfacecull 0)
(shape 10 10)

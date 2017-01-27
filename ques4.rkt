(DEFINE (min-above-min L1 L2)
        (COND
             ((NULL? L2) (smallest L1 0))
             (ELSE ) 
        )
 )

; helper function could be used for calculating minimum of both L1 and L2

; although the code is incomplete here is the description of the algorithm:

; 1. find smallest in L2
; 2. find smallest in L1
; 3. compare result of (2) with (1). if former (1) is greater than (2), return it and exit
;      else repeat 2, 3 with a list (l1 - the element of l1 tested already)
(DEFINE (smallest L num)
        (COND
             ; ((NULL? L) 
             ((< CAR(L) (CAR (CDR (L)))) (smallest ((append (CAR (L)) (CDR (CDR (L)))))))
             ; (ELSE
        )
)

(smallest '(10 22 15 19 1))


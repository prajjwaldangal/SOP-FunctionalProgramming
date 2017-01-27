(DEFINE (min-above-min L1 L2)
        (COND
             ((NULL? L2) (smallest L1 0))
             (ELSE ) 
        )
 )


(DEFINE (smallest L num)
        (COND
             ; ((NULL? L) 
             ((< CAR(L) (CAR (CDR (L)))) (smallest ((append (CAR (L)) (CDR (CDR (L)))))))
             ; (ELSE
        )
)

(smallest '(10 22 15 19 1))
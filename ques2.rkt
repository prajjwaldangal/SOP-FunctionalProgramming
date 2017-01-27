(DEFINE (sum-up-numbers-simple L)
        (COND
             ((NULL? '()) 0)
             ((LIST? (CAR L)) (sum-up-numbers-simple (CDR L)))
             
        )
)

(DEFINE (helper L)

        )
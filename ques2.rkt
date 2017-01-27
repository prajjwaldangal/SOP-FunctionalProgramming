(DEFINE (sum-up-numbers-simple L)
        (COND
             ((NULL? L) 0)
             ((LIST? (CAR L)) (sum-up-numbers-simple (CDR L)))
             ((number? (CAR L)) (+ (CAR L) (sum-up-numbers-simple (CDR L))))
             (ELSE (sum-up-numbers-simple (CDR L)))
        )
)

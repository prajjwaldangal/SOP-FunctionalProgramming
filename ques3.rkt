(DEFINE (sum-up-numbers-general L)
        (COND
            ((NULL? L) 0)
            ((NUMBER? L) L)
            ((LIST? L) (+ (sum-up-numbers-general (CAR L)) (sum-up-numbers-general (CDR L))))
            (ELSE (sum-up-numbers-general (CDR '(L))))
        )
)


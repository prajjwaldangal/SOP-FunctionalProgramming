(DEFINE (sum-up-numbers-general L)
        (COND
            ((NULL? L) 0)
            ((NUMBER? L) (+ L (CDR 'L))) 
            ((LIST? L) (+
            (ELSE (sum-up-numbers-general (CDR L)))
        )
)

(DEFINE (sum-up-numbers-general L)
        (COND
            ((NULL? L) 0)
            ((NUMBER? L) L) 
            (ELSE (sum-up-numbers-general (CDR '(L))))
        )
)


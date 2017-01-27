(DEFINE (reverse-general L)
        (COND
            ((NULL? L) L)
            ((LIST? L) (reverse-general (CDR L)))
            (ELSE (CONS (
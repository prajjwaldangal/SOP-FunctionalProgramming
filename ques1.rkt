(DEFINE (reverse-general L)
        (COND
            ((NULL? L) L)
            ((LIST? L) CONS
            (ELSE 
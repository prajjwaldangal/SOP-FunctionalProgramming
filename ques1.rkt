(DEFINE (reverse-general L)
        (COND
            ((NULL? L) L)
            ((LIST? L) (CONS (reverse-general (CDR L)) (reverse-general (CAR L))))
            (ELSE (CONS (
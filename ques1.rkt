(DEFINE (reverse-general L)
        (COND
            ((NULL? L) L)
            ((LIST? (CAR L)) (CONS (reverse-general (CDR L)) (list (reverse-general (CAR L)))))
            (ELSE (append (reverse-general (CDR L)) (list (CAR L))))
        )
)



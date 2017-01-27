(DEFINE (reverse-general L)
        (COND
            ((NULL? L) L)

            ; we need append to merge two sets to remove () for each nested list
            ((LIST? (CAR L)) (append (reverse-general (CDR L)) (list (reverse-general (CAR L)))))

            ; same reason as above for using append instead of CONS
            (ELSE (append (reverse-general (CDR L)) (list (CAR L))))
        )
)

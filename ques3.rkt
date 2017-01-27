(DEFINE (sum-up-numbers-general L)
        (COND
            ((NULL? L) 0)
            ((NUMBER? L) L)
            
            ; main condition that's likely to be evaluated for most of the cases
            ((LIST? L) (+ (sum-up-numbers-general (CAR L)) (sum-up-numbers-general (CDR L))))

            ; condition for when the atom is a string, like (a)
            (ELSE (sum-up-numbers-general (CDR '(L))))
        )
)



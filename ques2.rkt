(DEFINE (sum-up-numbers-simple L)
        (COND
             ((NULL? L) 0)

             ; main recursive condition 
             ((LIST? (CAR L)) (sum-up-numbers-simple (CDR L)))

             ; condition that does the actual summation 
             ((number? (CAR L)) (+ (CAR L) (sum-up-numbers-simple (CDR L))))

             ; other major recursive condition
             (ELSE (sum-up-numbers-simple (CDR L)))
        )
)

(DEFINE (sum-up-numbers-simple L)
        (COND
             ((NULL? '()) 0)
             ((LIST? (CAR L)) (sum-up-numbers-simple (CDR L)))
             ((number? (CAR L)) (+ (CAR L) (sum-up-number-simple (CDR L))))
             (ELSE (sum-up-number-simple (CDR L)))
        )
)

(sum-up-numbers-simple '(a 100 b 200 c 300 d))
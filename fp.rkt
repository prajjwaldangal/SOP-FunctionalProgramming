; Ques 1

(DEFINE (reverse-general L)
        (COND
            ((NULL? L) L)

            ; we need append to merge two sets to remove () for each nested list
            ((LIST? (CAR L)) (append (reverse-general (CDR L)) (list (reverse-general (CAR L)))))

            ; same reason as above for using append instead of CONS
            (ELSE (append (reverse-general (CDR L)) (list (CAR L))))
        )
)

; Ques 2

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



; Ques 3

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

; Ques 4
(DEFINE (min-above-min L1 L2)
        (COND
             ((NULL? L2) (smallest L1 0))
             (ELSE ) 
        )
 )

; helper function
(DEFINE (smallest L num)
        (COND
             ; ((NULL? L) 
             ((< CAR(L) (CAR (CDR (L)))) (smallest ((append (CAR (L)) (CDR (CDR (L)))))))
             ; (ELSE
        )
)


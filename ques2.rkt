(DEFINE (sum-up-numbers-simple L)
        (COND
             ((NULL? L) 0)
             ((LIST? (CAR L)) (sum-up-numbers-simple (CDR L)))
             ((number? (CAR L)) (+ (CAR L) (sum-up-numbers-simple (CDR L))))
             (ELSE (sum-up-numbers-simple (CDR L)))
        )
)


(sum-up-numbers-simple '())
(sum-up-numbers-simple '(100 200))
(sum-up-numbers-simple '(a b c))
(sum-up-numbers-simple '(100 a))
(sum-up-numbers-simple '(a 100))
(sum-up-numbers-simple '(a 100 b 200 c 300 d))
(sum-up-numbers-simple '( () ))
(sum-up-numbers-simple '((100)))
(sum-up-numbers-simple '(100 (200)))
(sum-up-numbers-simple '(a 100 b (200) c 300 d))

;0
;300
;0
;100
;100
;600
;0
;0
;100
;400
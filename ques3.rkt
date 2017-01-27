(DEFINE (sum-up-numbers-general L)
        (COND
            ((NULL? L) 0)
            ((NUMBER? L) L)
            ((LIST? L) (+ (sum-up-numbers-general (CAR L)) (sum-up-numbers-general (CDR L))))
            (ELSE (sum-up-numbers-general (CDR '(L))))
        )
)

(sum-up-numbers-general '())
(sum-up-numbers-general '(() 100 a 200))
(sum-up-numbers-general '(100))
(sum-up-numbers-general '(100 200))
(sum-up-numbers-general '(a))
(sum-up-numbers-general '(a 100 b 200 c 300 d))
(sum-up-numbers-general '(()))
(sum-up-numbers-general '(100))
(sum-up-numbers-general '(100 (200)))
(sum-up-numbers-general '(a 100 b (200) c 300 d))
(sum-up-numbers-general '(a 100 ((b((200)c)) 300 d)))

; 0
; 300
; 100
; 300
; 0
; 600
; 0
; 100
; 300
; 600
; 600
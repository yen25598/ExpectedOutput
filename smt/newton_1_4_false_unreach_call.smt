(declare-fun IN_newton_1_4_false_unreach_call_0 () Real)
(assert (= return x))
(assert (and (> (+ IN_0 0.8) 0) (< IN_0 0.8)))
(assert (not (< return 0.1)))
(check-sat)
(get-model)
(declare-fun IN_newton_1_6_false_unreach_call_0 () Real)
(assert (= return x))
(assert (and (> (+ IN_0 1.2) 0) (< IN_0 1.2)))
(assert (not (< return 0.1)))
(check-sat)
(get-model)
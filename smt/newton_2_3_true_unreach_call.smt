(declare-fun IN_newton_2_3_true_unreach_call_0 () Real)
(assert (and (= x (- x (/ f_x1 fp_x1))) (= return x)))
(assert (and (> (+ IN_0 0.6) 0) (< IN_0 0.6)))
(assert (not (< return 0.1)))
(check-sat)
(get-model)
(declare-fun IN_sine_7_true_unreach_call_0 () Real)
(declare-fun x_sine_7_true_unreach_call_0 () Real)
(declare-fun x_sine_7_true_unreach_call_1 () Real)
(declare-fun result_sine_7_true_unreach_call_0 () Real)
(declare-fun result_sine_7_true_unreach_call_1 () Real)
(declare-fun return_sine_7_true_unreach_call_0 () Real)
(assert (and (and (= x_sine_7_true_unreach_call_1 IN_sine_7_true_unreach_call_0) (= result_sine_7_true_unreach_call_1 (+ (+ (- x_sine_7_true_unreach_call_1 (/ (* (* x_sine_7_true_unreach_call_1 x_sine_7_true_unreach_call_1) x_sine_7_true_unreach_call_1) 6.0)) (/ (* (* (* (* x_sine_7_true_unreach_call_1 x_sine_7_true_unreach_call_1) x_sine_7_true_unreach_call_1) x_sine_7_true_unreach_call_1) x_sine_7_true_unreach_call_1) 120.0)) (/ (* (* (* (* (* (* x_sine_7_true_unreach_call_1 x_sine_7_true_unreach_call_1) x_sine_7_true_unreach_call_1) x_sine_7_true_unreach_call_1) x_sine_7_true_unreach_call_1) x_sine_7_true_unreach_call_1) x_sine_7_true_unreach_call_1) 5040.0)))) (= return_sine_7_true_unreach_call_0 result_sine_7_true_unreach_call_1)))
(assert (and (> (+ IN_sine_7_true_unreach_call_0 1.57079632679) 0) (< IN_sine_7_true_unreach_call_0 1.57079632679)))
(assert (not (and (<= return_sine_7_true_unreach_call_0 1.5) (>= (+ return_sine_7_true_unreach_call_0 1.5) 0))))
(check-sat)
(get-model)
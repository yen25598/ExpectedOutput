(declare-fun IN_square_5_true_unreach_call_0 () Real)
(declare-fun x_square_5_true_unreach_call_0 () Real)
(declare-fun x_square_5_true_unreach_call_1 () Real)
(declare-fun result_square_5_true_unreach_call_0 () Real)
(declare-fun result_square_5_true_unreach_call_1 () Real)
(declare-fun return_square_5_true_unreach_call_0 () Real)
(assert (and (and (= x_square_5_true_unreach_call_1 IN_square_5_true_unreach_call_0) (= result_square_5_true_unreach_call_1 (- (+ (- (+ 1.0 (* 0.5 x_square_5_true_unreach_call_1)) (* (* 0.125 x_square_5_true_unreach_call_1) x_square_5_true_unreach_call_1)) (* (* (* 0.0625 x_square_5_true_unreach_call_1) x_square_5_true_unreach_call_1) x_square_5_true_unreach_call_1)) (* (* (* (* 0.0390625 x_square_5_true_unreach_call_1) x_square_5_true_unreach_call_1) x_square_5_true_unreach_call_1) x_square_5_true_unreach_call_1)))) (= return_square_5_true_unreach_call_0 result_square_5_true_unreach_call_1)))
(assert (and (>= IN_square_5_true_unreach_call_0 0.0) (< IN_square_5_true_unreach_call_0 1.0)))
(assert (not (and (>= return_square_5_true_unreach_call_0 0) (< return_square_5_true_unreach_call_0 1.3985))))
(check-sat)
(get-model)
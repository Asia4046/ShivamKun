(define equality-check-control-loop
  _ 0 -> ok
  C N -> (equality-check-control-loop C (- N 1)))

(define equal-values
  _ _ R 0 -> R
  ValA ValB _ N -> (equal-values ValA ValB (= ValA ValB) (- N 1)))

(define equal-symbol-literal
  _ R 0 -> R
  Sym _ N -> (equal-symbol-literal Sym (= Sym symbol) (- N 1)))

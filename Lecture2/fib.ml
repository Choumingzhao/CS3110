let rec fib n =
  if (n = 1 || n = 2) then 1 else fib (n-1) + fib (n-2)

(** helper function for fib_fast implementation *)
let rec h n pp p = 
  if n = 1 then p else h (n-1) p (pp+p)

let fib_fast n = h n 0 1


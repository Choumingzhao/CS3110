(* Syntax
  match e with 
  | p1 -> e1
  | p2 -> e2 
  | _  -> e3*)

(* cases: more than 2 or only 1 *)
(* or sub expresions need shared the same type *)

(* Match shape of data *)
(* extract part(s) of data *)

(* like switch statement like other language *)
let x = 
  match not true with
  | true -> "nope"
  | false -> "yep"

let y = 
  match 42 with
  | fooo -> fooo + 1
  
let z = 
  match "foo" with
  | "bar" -> 0
  | _ -> 1


let a = 
  match [1;2] with
  | [] -> "empty"
  | _ -> "not empty"

let b = 
  match ["taylor"; "swift"] with
  | [] -> ["folklore"]
  | h :: t -> t

(* std don't have fst ele for a tuple *)
let fst3 t = 
  match t with
  | (a, b, c) -> a

let empty lst = 
  match lst with 
  | [] -> true
  | _ -> false

(* syntax sugar: when do matching with last  *)
let empty lst = function
  | [] -> true
  | _ -> false

let rec sum lst = 
  match lst with
  | [] -> 0
  | h :: t -> h + sum t

(* use #trace to trace recursive function call in utop *)

let rec length lst = 
  match lst with
  | [] -> 0
  | h :: t -> 1 + length t

(* example ussage:
  append [1;2;3] [4;5;6] is [1;2;3;4;5;6]
  same as : [1;2;3] @ [4;5;6]
  *)
let rec append lst1 lst2 = 
  match lst1 with
  | [] -> lst2
  | h :: t -> h :: append t lst2


  (* compiler check errors in matching *)
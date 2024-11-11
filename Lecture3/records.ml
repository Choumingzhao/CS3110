(* order is not important for records *)
type student =  {
    name : string;
    year : int; (* grad year *)
}

(* To use a record, record types must be defined *)
let rbg = {
    name = "Ruth Bader";
    year = 1984;
}
(* use dot access filed of record *)
(* just like dictionary *)
(* this is field names are identifiers rather than expressions  *)
(* rbg.name *)


(* record update *)
(* original record not mutated, this is just a copy *)
let rbg2 = {rbg with year = 2020}


let name_with_year s = 
    match s with
    | {name; year} -> name ^ "  '" ^ string_of_int (year mod 100)
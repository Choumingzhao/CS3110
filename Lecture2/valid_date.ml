let valid_date (d : int) (m : string) = 
  if (m = "Jan" || m = "Mar" || m = "May" || m = "Jul" || m = "Aug" || m = "Oct" || m = "Dec") then
    d >= 1 && d <= 31
  else if (m = "Apr" || m = "Jun" || m = "Sep" || m = "Nov") then
    d >= 1 && d <= 30
  else if (m = "Feb") then
    d >= 1 && d <= 29
  else false

let () =  
  print_endline (string_of_bool (valid_date 31 "Jan"));
  print_endline (string_of_bool (valid_date 30 "Feb"));
  print_endline (string_of_bool (valid_date 29 "Feb"));
  print_endline (string_of_bool (valid_date 31 "Apr"))
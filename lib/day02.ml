let input = File.read "resources/day02.txt"

let parse_line input = 
  input |> String.trim |> String.split_on_char '\n'

let parse_report line = 
  line |> String.split_on_char ' ' |> List.map int_of_string

let rec is_safe dampener report =
  let are_adjacent_levels_safe inc l1 l2 =
    let diff = abs (l1 - l2) in
    ((inc && l1 < l2) || (not inc && l1 > l2)) &&
    1 <= diff && diff <= 3
  in
  
  let rec is_safe_aux inc dampened = function
    | []             -> assert false
    | [_]            -> true
    | l1 :: l2 :: tl ->
      are_adjacent_levels_safe inc l1 l2 && is_safe_aux inc dampened (l2 :: tl) ||
      (not dampened && is_safe_aux inc true (l1 :: tl))
  in
  
  match report with
    | [] | [_] -> true
    | _ :: tl  ->
      is_safe_aux true (not dampener) report ||
      is_safe_aux false (not dampener) report ||
      (dampener && is_safe false tl)

let count_safe_reports is_safe input =
  parse_line input 
    |> List.map parse_report 
    |> List.filter is_safe 
    |> List.length
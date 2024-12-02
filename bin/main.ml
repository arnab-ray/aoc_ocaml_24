let test_1_1 = Aoc.Problem_1_1.total_distance Aoc.Problem_1_1.input
let () = 
  Printf.printf "total distance: %i\n%!" test_1_1

let test_1_2 = Aoc.Problem_1_2.similarity_score Aoc.Problem_1_2.input
let () = 
  Printf.printf "similarity score: %i\n%!" test_1_2
  (** print_endline "Hello, World!" *)

let test_2 = Aoc.Day02.count_safe_reports (Aoc.Day02.is_safe true) Aoc.Day02.input
let () = 
  Printf.printf "safe count: %i\n%!" test_2

open OUnit2
open Aoc

let tests = "test suite for aoc day 01" >::: [
  "total_distance" >:: (fun _ -> assert_equal 3574690 (Problem_1_1.total_distance Problem_1_1.input));
  "similarity_score" >:: (fun _ -> assert_equal 22565391 (Problem_1_2.similarity_score Problem_1_2.input));
  "safe count" >:: (fun _ -> assert_equal 341 (Day02.count_safe_reports (Day02.is_safe false) Day02.input));
  "safe count demented" >:: (fun _ -> assert_equal 404 (Day02.count_safe_reports (Day02.is_safe true) Day02.input))
]

let _ = run_test_tt_main tests
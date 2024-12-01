open OUnit2
open Aoc

let tests = "test suite for aoc day 01" >::: [
  "total_distance" >:: (fun _ -> assert_equal 3574690 (Problem_1_1.total_distance Problem_1_1.input));
  "similarity_score" >:: (fun _ -> assert_equal 22565391 (Problem_1_2.similarity_score Problem_1_2.input));
]

let _ = run_test_tt_main tests
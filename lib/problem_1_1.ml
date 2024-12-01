let input = File.read "resources/input_day_01.txt"

let pair_sort (a, b) =
  (List.sort compare a, List.sort compare b)

let pair_to_list (a, b) =
  List.combine a b

let total_distance s = s
  |> String.trim
  |> String.split_on_char '\n'
  |> List.map (
    fun line -> let nums = String.split_on_char ' ' line
      |> List.filter (fun str -> str <> "")
      |> List.map (fun i -> int_of_string i) in
      match nums with
      | [x; y] -> (x, y)
      | _ -> failwith "input error"
  )
  |> List.split
  |> pair_sort
  |> pair_to_list
  |> List.map(fun pair -> abs(snd(pair) -  fst(pair)))
  |> List.fold_left ( + ) 0
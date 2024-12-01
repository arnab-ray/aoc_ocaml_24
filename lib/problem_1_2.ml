let input = File.read "resources/input_day_01.txt"

let score (a, b) =
  List.fold_left (fun sum item ->
    sum + item * (b
      |> List.filter (fun s -> s = item)            
      |> List.length
    )
  ) 0 a

let similarity_score s = s
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
  |> score
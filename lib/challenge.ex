require IEx

defmodule Challenge do
  def winner(andrea, maria, "Even") do

    andreas_score = Enum.zip(andrea, maria)
    |> Enum.map(fn x -> Tuple.to_list(x) end)
    |> Enum.map(fn x -> Enum.at(x, 0) - Enum.at(x, 1) end)

    marias_score = Enum.zip(andrea, maria)
    |> Enum.map(fn x -> Tuple.to_list(x) end)
    |> Enum.map(fn x -> Enum.at(x, 1) - Enum.at(x, 0) end)

    andreas_score = Enum.map(Enum.with_index(andreas_score), fn x -> Tuple.to_list(x) end)
    |> Enum.reject(fn x -> rem(Enum.at(x, 1), 2) == 1  end)

    marias_score = Enum.map(Enum.with_index(marias_score), fn x -> Tuple.to_list(x) end)
    |> Enum.reject(fn x -> rem(Enum.at(x, 1), 2) == 1  end)

    score_1 = Enum.map(andreas_score, fn x -> Enum.at(x, 0) end)
    score_2 = Enum.map(marias_score, fn x -> Enum.at(x, 0) end)

    if Enum.sum(score_1) > Enum.sum(score_2) do
      "Andrea"
    else
      "Maria"
    end
  end

  def winner(andrea, maria, "Odd") do

    andrea = Enum.with_index(andrea)
    |> Enum.map(fn x -> Tuple.to_list(x) end)
    |> Enum.reject(fn x -> Enum.at(x, 1) == 0 end)
    |> Enum.flat_map(fn x -> Enum.drop(x, -1) end)

    maria = Enum.with_index(maria)
    |> Enum.map(fn x -> Tuple.to_list(x) end)
    |> Enum.reject(fn x -> Enum.at(x, 1) == 0 end)
    |> Enum.flat_map(fn x -> Enum.drop(x, -1) end)

    andreas_score = Enum.zip(andrea, maria)
    |> Enum.map(fn x -> Tuple.to_list(x)end)
    |> Enum.map(fn x -> Enum.at(x, 0) - Enum.at(x, 1)end)

    marias_score = Enum.zip(andrea, maria)
    |> Enum.map(fn x -> Tuple.to_list(x)end)
    |> Enum.map(fn x -> Enum.at(x, 1) - Enum.at(x, 0)end)

    andreas_score = Enum.map(Enum.with_index(andreas_score), fn x -> Tuple.to_list(x) end)
    |> Enum.reject(fn x -> rem(Enum.at(x, 1), 2) == 0  end)

    marias_score = Enum.map(Enum.with_index(marias_score), fn x -> Tuple.to_list(x) end)
    |> Enum.reject(fn x -> rem(Enum.at(x, 1), 2) == 0  end)

    score_1 = Enum.map(andreas_score, fn x -> Enum.at(x, 0) end)
    score_2 = Enum.map(marias_score, fn x -> Enum.at(x, 0) end)

    if Enum.sum(score_1) > Enum.sum(score_2) do
      "Andrea"
    else
      "Maria"
    end
  end
end







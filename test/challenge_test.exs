defmodule ChallengeTest do
  use ExUnit.Case
  doctest Challenge

  test "test even" do
    assert "Maria" == Challenge.winner([1,2,3], [2,1,3], "Even")
  end

  test "test odd" do
    assert "Andrea" == Challenge.winner([3,1,2,3], [3,2,1,3], "Odd")
  end
end

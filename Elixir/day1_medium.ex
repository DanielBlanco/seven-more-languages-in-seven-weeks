defmodule Day1Medium do

  def list_size([]), do: 0
  def list_size([_|t]), do: 1 + list_size(t)
  def list_size(_), do: 0

  def max_value([v]), do: v
  def max_value([h|t]) do
    max_tail = max_value(t)
    cond do
      h >= max_tail -> h
      true -> max_tail
    end
  end
  def max_value(_), do: 0


  def min_value([v]), do: v
  def min_value([h|t]) do
    min_tail = min_value(t)
    cond do
      h <= min_tail -> h
      true -> min_tail
    end
  end
  def min_value(_), do: 0


  def word_count(words) do
    words
    |> Enum.reduce %{}, fn(word, acc) ->
      Map.update acc, word, 1, &(&1 + 1)
    end
  end
end

point1   = {1, 2}
IO.puts "point1  = #{inspect point1}"

point2   = {20, 30}
IO.puts "point2  = #{inspect point2}"

line     = {point1, point2}
IO.puts "line    = #{inspect line}"

circle   = {5}
IO.puts "circle  = #{inspect circle}"

polygon  = {3, 4, 2, 5, 6}
IO.puts "circle  = #{inspect polygon}"

triangle = {3, 4, 5}
IO.puts "triangle= #{inspect triangle}"

defmodule Day1Easy do
  def hypotenuse(a, b), do: (a * a) + (b * b) |> :math.sqrt
end

String.to_atom "cat"

is_atom "cat" # false
is_atom :cat  # true

hypo = Day1Easy.hypotenuse 3, 4
IO.puts "hypotenuse for values 3 & 4 is #{inspect hypo}"

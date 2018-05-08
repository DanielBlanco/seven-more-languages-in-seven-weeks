defmodule Day1Easy do
  def point(x, y), do: {x, y}
  def line({x1,y1}, {x2, y2}), do: {{x1, y1}, {x2, y2}}
  def circle(radius), do: {radius}
  def triangle(x, y, z), do: {x, y, z}
  def hypotenuse(a, b), do: (a * a) + (b * b) |> :math.sqrt
end

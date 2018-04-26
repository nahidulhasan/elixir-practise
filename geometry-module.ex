defmodule Geometry do
  def area({:rectangle, w, h}) do
      w * h
  end

  def area({:circle, r}) when is_number(r) do
    3.14 * r * r
  end
end

defmodule PrivateMath do
  def sum(a, b) do
    do_sum(a, b)
  end

  #defp is used for define private method
  defp do_sum(a, b) do
    a + b
  end
end

defmodule PaymentApi.Core.NumbersTest do
  use ExUnit.Case

  alias PaymentApi.Core.Numbers

  describe "sum_from_file/1" do
    test "When there is a file, returns the sum of numbers" do
      {:ok, result} = Numbers.sum_from_file("numbers")

      assert result ==  %{result: 55}
    end

    test "When there no a file, returns error" do
      {:error, reason} = Numbers.sum_from_file("test")

      assert reason ==  %{message: "Invalid File"}
    end
  end

end

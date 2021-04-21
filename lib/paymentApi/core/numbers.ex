defmodule PaymentApi.Core.Numbers do

  def sum_from_file(fileName) do
    "#{fileName}.csv"
    |> File.read() #pipe operator
    |> handle_file() #pipe operator
  end

  defp handle_file({ :ok, result }) do
    result
    |> String.split(",")
    |> Stream.map(fn number -> String.to_integer(number) end)
    |> Enum.sum
    |> (fn result -> {:ok, %{ result: result }} end).()
  end

  defp handle_file({ :error, _reason }), do: {:error, %{message: "Invalid File"}}

end

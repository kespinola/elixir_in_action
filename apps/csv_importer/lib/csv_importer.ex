defmodule CsvImporter do
  @moduledoc """
  csv importer
  """

  @doc """
  """

  def process(abs_path) do
    File.stream!(abs_path)
    |> Stream.map(&String.replace(&1, "\n", ""))
    |> Stream.map(&String.split(&1, ","))
  end

  def decode(stream, encoding) do
    stream
    |> Stream.map(&Enum.with_index(&1))
    |> Stream.map(&Enum.reduce(&1, %{}, fn({value, index}, acc) ->
      Map.put_new(acc, Enum.at(encoding, index), value)
    end))
  end
end

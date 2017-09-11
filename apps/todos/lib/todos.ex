defmodule Todos do
  @moduledoc """
  Documentation for Todos.
  """
  alias Todos.{List}

  @doc """
  """

  def from_csv(path) do
    path
    |> CsvImporter.import
    |> CsvImporter.decode([:date, :note])
    |> Enum.to_list
    |> List.from_list
  end
end

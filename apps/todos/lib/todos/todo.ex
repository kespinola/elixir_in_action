defmodule Todos.Todo do
  @moduledoc """
  Manage todos for a list
  """

  defstruct id: nil, date: nil, note: ''

  @doc """
  """
  def new(%{
    id: id,
    date: {year, month, day},
    note: note
  }), do: %__MODULE__{id: id, date: Date.new(year, month, day), note: note}
end

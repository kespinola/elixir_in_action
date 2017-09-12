defmodule Todos.List do
  @moduledoc """
  Documentation for Todos
  """

  alias Todos.{Todo}
  @doc """
  """

  defstruct auto_id: 1, entries: %{}

  def new, do: %__MODULE__{}

  def add(
    %__MODULE__{entries: entries, auto_id: auto_id} = list,
    %{date: date, note: note}
  ) do
    todo = Todo.new(%{id: auto_id, date: date, note: note})

    %__MODULE__{list | auto_id: auto_id + 1, entries: Map.put(entries, auto_id, todo)}
  end

  def from_list(list) do
    list
    |> Enum.map(fn(%{date: import_date} = todo) ->
      [year, month, day] = String.split(import_date, "/") |> Enum.map(&String.to_integer(&1))
      %{todo | date: {year, month, day}}
    end)
    |> Enum.reduce(new, &add(&2, &1))
  end
end

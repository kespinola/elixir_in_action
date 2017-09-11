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
end

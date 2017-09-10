defmodule Todos.List do
  @moduledoc """
  Documentation for Todos.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Todos.hello
      :world

  """

  defstruct auto_id: 1, entries: HashDict.new

  def new, do: %__MODULE__{}
end

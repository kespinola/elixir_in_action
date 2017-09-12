defmodule TodosTest do
  use ExUnit.Case
  doctest Todos
  alias Todos
  alias Todos.{Todo, List}

  describe "./from_csv/1" do
    test "todo list from csv" do
      todo_list = "./test/fixtures/todos.csv"
               |> Path.absname
               |> Todos.from_csv

       todo_list == %List{
        auto_id: 2,
        entries: %{1 => Todo.new(%{id: 1, date: {2017, 9, 10}, note: "test"})}
      }
    end
  end
end

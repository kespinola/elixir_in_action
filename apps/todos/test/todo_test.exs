defmodule Todos.TodoTest do
  use ExUnit.Case
  doctest Todos.Todo
  alias Todos.Todo

  describe ".new/1" do
    test "a new todo struct" do
      assert Todo.new(%{id: 1, date: {2017, 9, 10}, note: 'test'}) == %Todo{id: 1, date: Date.new(2017, 9, 10), note: 'test'}
    end
  end
end

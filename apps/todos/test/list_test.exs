defmodule Todos.ListTest do
  use ExUnit.Case
  doctest Todos
  alias Todos.List

  describe ".new/0" do
    test "empty list struct" do
      assert List.new == %List{}
    end
  end
end

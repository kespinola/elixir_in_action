defmodule CsvImporterTest do
  use ExUnit.Case
  doctest CsvImporter

  describe ".import/1" do
    test "imports a csv" do
      assert CsvImporter.import("") == :world
    end
  end
end

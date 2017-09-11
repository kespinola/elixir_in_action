defmodule CsvImporterTest do
  use ExUnit.Case
  doctest CsvImporter
  require IEx

  describe ".process/2" do
    test "imports a csv" do
      stream = "./test/fixtures/todos.csv"
               |> Path.absname
               |> CsvImporter.process

      assert Enum.to_list(stream) == [["2013/12/19", "Dentist appointment"], ["2013/12/20", "Yard work"], ["2013/12/19", "See movies with Jane"]]
    end
  end

  describe ".decode/2" do
    test "decodes a csv list" do
      decoding = CsvImporter.decode([["2013/12/19", "Dentist appointment"]], [:date, :note])

      assert  Enum.to_list(decoding) == [%{date: "2013/12/19", note: "Dentist appointment"}]
    end
  end
end

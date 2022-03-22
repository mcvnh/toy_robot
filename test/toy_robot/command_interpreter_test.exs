defmodule ToyRobot.CommandInterpreterTest do
  use ExUnit.Case, async: true

  doctest ToyRobot.CommandInterpreter

  alias ToyRobot.CommandInterpreter

  test "handles all commands" do
    commands = [
      "PLACE 1,2,NORTH",
      "MOVE",
      "LEFT",
      "RIGHT",
      "REPORT"
    ]

    output = commands |> CommandInterpreter.interpret

    assert output == [
      {:place, %{east: 1, north: 2, facing: :north}},
      :move,
      :turn_left,
      :turn_right,
      :report
    ]
  end

  test "marks invalid commands as invalid" do
    commands = ["SPIN", "TWIRL", "EXTERMINATE"]
    output = commands |> CommandInterpreter.interpret

    assert output == [
      {:invalid, "SPIN"},
      {:invalid, "TWIRL"},
      {:invalid, "EXTERMINATE"}
    ]
  end
end

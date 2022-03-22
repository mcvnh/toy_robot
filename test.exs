alias ToyRobot.{Table, Simulation}

table = %Table{north_boundary: 4, east_boundary: 4}
placement = Simulation.place(table, %{north: 0, east: 0, facing: :north})

case placement do
  {:ok, simulation} ->
    simulation
    |> Simulation.move
    |> Simulation.turn_right
    |> Simulation.move
    |> Simulation.move
    |> Simulation.turn_left
    |> IO.inspect

  {:error, :invalid_placement} ->
    IO.puts "Invalid placement location for robot"
end

defmodule Mix.Tasks.Exe do
  use Mix.Task

  def run(_arg) do
    RayexCircle.main()
  end
end

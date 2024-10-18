defmodule Mix.Tasks.Exe do
  use Mix.Task

  def run(_arg) do
    Rayex3d.main()
  end
end

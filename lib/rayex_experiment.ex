defmodule RayexExperiment do
  use Rayex

  def main() do
    init_window(640, 480, "window name")
    main_loop(true)
  end

  defp main_loop(true) do
    begin_drawing()
    draw_line(10, 10, 50, 51, %{r: 255, g: 161, b: 0, a: 255})
    end_drawing()
    Process.sleep(500)
    main_loop(!window_should_close())
  end

  defp main_loop(_), do: nil

end

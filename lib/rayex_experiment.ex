defmodule RayexExperiment do
  use Rayex

  def main() do
    init_window(800, 800, "window name")
    main_loop(true)
  end

  defp main_loop(true) do
    begin_drawing()
    draw()
    #draw_line(10, 10, 50, 51, %{r: 255, g: 161, b: 0, a: 255})
    end_drawing()

    Process.sleep(10)
    main_loop(!window_should_close())
  end

  defp main_loop(_), do: nil

  defp draw() do
    x1 = Enum.random(1..800)
    y1 = Enum.random(1..800)
    x2 = Enum.random(1..800)
    y2 = Enum.random(1..800)

    draw_line(x1, y1, x2, y2, %{r: 255, g: 161, b: 0, a: 255})
  end

end

defmodule Base do
  use Rayex

  def main() do
    init_window(800, 800, "window name")
    set_target_fps(100)
    main_loop(true)
  end

  defp main_loop(true) do
    begin_drawing()
    draw()
    end_drawing()
    main_loop(!window_should_close())
  end

  defp main_loop(_), do: nil

  defp draw() do
    draw_line(10, 10, 50, 51, %{r: 255, g: 161, b: 0, a: 255})
  end
end

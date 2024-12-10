defmodule RayexCircle do
  use Rayex

  def main() do
    init_window(800, 800, "window name")
    main_loop(true)
  end

  defp main_loop(true) do
    begin_drawing()
    draw_circle(400, 400, 100.0, %{r: 255, g: 161, b: 0, a: 255})

    end_drawing()

    Process.sleep(1000)
    main_loop(!window_should_close())
  end

  defp main_loop(_), do: nil
end

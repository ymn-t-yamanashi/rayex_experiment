defmodule Test1 do
  use Rayex
  alias Rayex.Structs.Rectangle

  @color %{r: 0, g: 255, b: 0, a: 255}

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
    rectangle = %Rectangle{x: 10.0, y: 10.0, width: 30.0, height: 30.0}
    draw_rectangle_rec(rectangle, @color)
  end
end

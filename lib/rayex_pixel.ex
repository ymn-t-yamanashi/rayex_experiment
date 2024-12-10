defmodule RayexPixel do
  use Rayex

  def main() do
    init_window(800, 800, "window name")
    main_loop(true)
  end

  defp main_loop(true) do
    begin_drawing()

    1..5
    |> Enum.each(fn _ ->
      draw()
    end)

    end_drawing()

    Process.sleep(1000)
    main_loop(!window_should_close())
  end

  defp main_loop(_), do: nil

  defp draw() do
    x1 = Enum.random(1..800)
    y1 = Enum.random(1..800)

    1..360
    |> Enum.each(fn r ->
      point(r, x1, y1)
      |> then(fn [x, y] ->
        draw_pixel(x, y, %{r: 255, g: 161, b: 0, a: 255})
      end)
    end)
  end

  def point(r, x, y) do
    c = :math.pi() / 180
    px = :math.cos(c * r) * 100 + x
    py = :math.sin(c * r) * 100 + y
    [trunc(px), trunc(py)]
  end
end

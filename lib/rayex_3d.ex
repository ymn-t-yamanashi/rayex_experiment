defmodule Rayex3d do
  alias Rayex.Structs, as: S
  use Rayex

  @color_white %S.Color{r: 245, g: 245, b: 245, a: 255}
  @color_gray %S.Color{r: 130, g: 130, b: 130, a: 255}

  def main() do
    init_window(800, 800, "window name")
    set_target_fps(240)
    main_loop(true, -10.0)
  end

  defp main_loop(true, c) do
    c = if c > 10, do: -10.0, else: c + 0.1

    begin_drawing()
    draw(c)
    end_drawing()
    main_loop(!window_should_close(), c)
  end

  defp main_loop(_, _), do: nil

  defp draw(c) do
    clear_background(@color_white)

    camera = %S.Camera3D{
      position: %S.Vector3{x: 10.0, y: 10.0, z: 10.0},
      target: %S.Vector3{x: 0.0, y: 0.0, z: 0.0},
      up: %S.Vector3{x: 0.0, y: 1.0, z: 0.0},
      fovy: 45.0,
      projection: 0
    }

    update_camera(camera, 4)
    cube_position = %S.Vector3{x: c, y: c, z: 1.0}
    begin_mode_3d(camera)
    draw_cube(cube_position, 0.1, 0.1, 0.1, @color_gray)
    draw_grid(100, 1.0)
    end_mode_3d()
  end
end

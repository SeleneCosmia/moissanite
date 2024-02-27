require "./colors"
require "raylib-cr/rlgl"
require "raylib-cr"
sw = 1920
sh = 1080
alias Rl = Raylib

show_text = false

Rl.init_window(sw, sh, "moissanite.cr")
Rl.set_target_fps(60)

until Rl.close_window?
  Rl.begin_drawing
  Rl.clear_background(Rl::RAYWHITE)
  Rl.draw_rectangle(sw/2, sh/2, sw/4 - 220, sh/4 - 80, Moissanite::ONYX)

  if Rl.key_pressed?(Rl::KeyboardKey::One)
    Rl.draw_rectangle(sw/2*4, sh/2, 240.0, 135.0, Rl::ORANGE)
    show_text = !show_text
  end

  if show_text
    Rl.draw_text("Pressed <1> key", sw/2*4 - 30, sh/2 + 34, 24, Rl::DARKBROWN)
  end

  if Rl.key_pressed_repeat?(Rl::KeyboardKey::One)
    Rl.clear_background(Rl::RAYWHITE)
  end

  Rl.end_drawing
end

Rl.close_window

require "./colors"
require "raylib-cr/rlgl"
require "raylib-cr"

sw = 1920
sh = 1080

alias Rl = Raylib
alias Theme = Moissanite::Theme

show_text = false

Rl.init_window(sw, sh, "Moissanite")
Rl.set_target_fps(60)

until Rl.close_window?
  Rl.begin_drawing
  Rl.clear_background(Rl::RAYWHITE)
  Rl.draw_rectangle(sw/2 - 120, sh/2, sw/4 - 220, sh/4 - 80, Theme::ONYX)

  if Rl.key_pressed?(Rl::KeyboardKey::One)
    show_text = !show_text
  end

  if show_text
    Rl.draw_rectangle(sw/2 + 250, sh/2 + 64, 554.0, 164.0, Theme::AMBER)
    Rl.draw_text("You pressed the <1> key!", sw/2 + 300, sh/2 + 34, 34, Rl::DARKBROWN)
  end

  if Rl.key_pressed_repeat?(Rl::KeyboardKey::One)
    Rl.clear_background(Rl::RAYWHITE)
  end

  Rl.end_drawing
end

Rl.close_window

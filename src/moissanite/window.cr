require "raylib-cr"
require "raylib-cr/rlgl"
require "raylib-cr/raygui"
require "./colors"
sw = 1920
sh = 1080

alias Rl = Raylib
alias Rg = Raygui
alias DP = Raygui::DefaultProperty

class Swatches
  MAX = 16
  class_getter boxes = [] of Rl::Rectangle

  def self.setup
    #  defines instance var boxes
    #  where boxes is an empty array that indexes Rl::Rectangle
    @@boxes = [] of Rl::Rectangle

    MAX.times do
        x = Rl.get_random_value(0, sw).to_f
        y = Rl.get_random_value(0, sh).to_f
        width = Rl.get_random_value(10, 100).to_f
        height = Rl.get_random_value(10, 100).to_f
        @@boxes << Rl::Rectangle.new(x: x, y: y, width: width, height: height)
    end

    @@boxes = boxes
  end
end

show_text = false

Rl.init_window(sw, sh, "moissanite.cr")
Rl.set_target_fps(60)

until Rl.close_window?
  Rl.begin_drawing
  Rl.clear_background(Rl::RAYWHITE)
  Rl.draw_rectangle(sw/2, sh/2, sw/4 - 220, sh/4 - 80, Moissanite::ONYX)

  bw = 250
  bh = 80

  Rg.set_style(Rg::Control::Default, DP::TextSize, 25)

  if Rg.button(
    Rl::Rectangle.new(
      x: Rl.get_screen_width/2 - bw/2,
      y: Rl.get_screen_height/2 - bh/2,
      width: bw,
      height: bh
    ),
      "This is a button!"
    )
    show_text = !show_text
  end

  if show_text
    Rl.draw_text("Button Pressed!", 10, 10, 40, Rl::SKYBLUE)
  end
  
#  if Rl.key_pressed?(Rl::KeyboardKey::One)
#      Rl.draw_rectangle(sw/2*4, sh/2, 240.0, 135.0, Rl::ORANGE)
#      Rl.draw_text("Pressed <1> key", sw/2*4 - 30, sh/2 + 34, 24, Rl::DARKBROWN)
#  end

  Rl.end_drawing
end

Rl.close_window

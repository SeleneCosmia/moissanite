require "./colors"
require "raylib-cr/rlgl"
require "raylib-cr"

sw = 1920
sh = 1080

alias Rl    = Raylib
alias Theme = Moissanite::Theme
alias Key   = Rl::KeyboardKey
alias Vec2  = Rl::Vector2
alias Rect  = Rl::Rectangle

# Init Window
# ---------------------------------------------------------------------------------------- 
Rl.init_window(sw, sh, "Moissanite")
Rl.set_target_fps(60)

screen_height = 1080
screen_width  = 1920

currentFrame  = 0
frameSpeed    = 8

# ------------------ Rectangle definitions ----------------------
menubar = Rect.new(
  x: 0.0,
  y: 0.0,
  width: 1920.0,
  height: 40.0)

statusbar = Rect.new(
  x: 0.0,
  y: screen_height - 20.0,
  width: 1920.0,
  height: 20.0)

circle = Vec2.new(x: 1920/2.0 - 220.0, y: 1080/2.0 - 180.0)

# ------------------- Virus Sprite Sources ---------------------------------------------------
capsidVirus = Rl.load_image("resources/imgs/CapsidVirus/walk_cycle.png")
virusAnim   = Rl.load_texture_from_image(capsidVirus)

virus_width  = virusAnim.width/3.0
virus_height = virusAnim.height

position = Vec2.new(x: 0.0, y: 0.0)

virusFrames = Vec2.new(x: virus_width, y: virus_height)
virusRec    = Rect.new(x: 0.0, y: 0.0, width: virus_width, height: virus_height)
virusDest   = Rect.new(x: virusFrames.x, y: virusFrames.y, width: virusFrames.x, height: virus_height)

moving = false
until Rl.close_window?
  Rl.set_exit_key(Key::Q)
  
  if Rl.key_down?(Key::Right)
    moving = !moving
  end

  if Rl.key_down?(Key::Left)
    moving = !moving
  end

  if moving
    currentFrame += 1

    if currentFrame > 2
      currentFrame = 0
    end

    if Rl.key_down?(Key::Right)
      virusRec.x = virus_width * currentFrame
      position.x += frameSpeed
    elsif Rl.key_down?(Key::Left)
      virusRec.x = virus_width * currentFrame
      position.x -= frameSpeed
    end
  end
# ------- Begin Drawing Mode --------------------------------------------------------
  Rl.begin_drawing
  Rl.clear_background(Raylib::RAYWHITE)

  Rl.draw_circle_v(circle, 120.0, Theme::AMBER)

  Rl.draw_text(
    "Moissanite",
    1920/2 - 120,
    1080/2 - 180/2,
    24,
    Theme::ONYX
  )

  Rl.draw_texture_pro(virusAnim, virusRec, virusDest, position, 0, Rl::WHITE)
# menu bar @ top of window --------------------------------------------
  Rl.draw_rectangle(0, 0, 1920, 40.0, Theme::BERYL)

  Rl.draw_text(
    "Window Title Text",
    20,
    40/4,
    24,
    Rl::RAYWHITE
  )

  Rl.draw_rectangle_lines_ex(menubar, 5.0, Theme::ONYX)

# statusbar ------------------------------------------------------------
  Rl.draw_rectangle_rec(statusbar, Theme::GARNET)
  Rl.draw_rectangle_lines_ex(statusbar, 2.0, Theme::DUST)

  Rl.end_drawing
end
# ------- End Drawing -------------------------------------------------------------
Rl.unload_image(capsidVirus)
Rl.unload_texture(virusAnim)

Rl.close_window
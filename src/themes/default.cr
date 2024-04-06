require "raylib-cr"
require "../moissanite/themes"

class Theme
  class Default
    LIGHTGRAY  = Colorize.create(200, 200, 200)
    GRAY       = Colorize.create(130, 130, 130)
    DARKGRAY   = Colorize.create(80, 80, 80)
    YELLOW     = Colorize.create(253, 249, 0)
    GOLD       = Colorize.create(255, 203, 0)
    ORANGE     = Colorize.create(255, 161, 0)
    PINK       = Colorize.create(255, 109, 194)
    RED        = Colorize.create(230, 41, 55)
    MAROON     = Colorize.create(190, 33, 55)
    GREEN      = Colorize.create(0, 228, 48)
    LIME       = Colorize.create(0, 158, 47)
    DARKGREEN  = Colorize.create(0, 117, 44)
    SKYBLUE    = Colorize.create(102, 191, 255)
    BLUE       = Colorize.create(0, 191, 255)
    DARKBLUE   = Colorize.create(0, 82, 255)
    PURPLE     = Colorize.create(200, 122, 255)
    VIOLET     = Colorize.create(135, 60, 190)
    DARKPURPLE = Colorize.create(112, 31, 126)
    BEIGE      = Colorize.create(211, 176, 131)
    BROWN      = Colorize.create(127, 106, 79)
    DARKBROWN  = Colorize.create(76, 63, 47)
    WHITE      = Colorize.create(255, 255, 255)
    BLACK      = Colorize.create(0, 0, 0)
    BLANK      = Colorize.clear()
    MAGENTA    = Colorize.create(255, 0, 255)
    RAYWHITE   = Colorize.create(245, 245, 245)
  end
end
require "./colors"
require "raylib-cr/rlgl"
require "raylib-cr"

sw = 1920
sh = 1080

alias Rl = Raylib

module Moissanite
  class Window
    include Theme

    @win_width : Int32
    @win_height : Int32

    def initialize(@width : Int32, height : Int32)
      @win_width = @width
      @win_height = @height
      Rl.init_window(width, height, "Moissanite")
      Rl.set_target_fps(60)
    end

    def self.setup
      Rl.set_exit_key()
    end

    def render
      Rl.begin_drawing

      Rl.clear_background(Theme::MOONSTONE)
      Rl.draw_rectangle(
        sw/2 - 220,  # positionX = ( screen width divided by 2 ) minus 220px
        sh/2 - 180,  # positionY = ( screen height divided by 2 ) minus 180px
        420.0,       # Rectangle is 420px wide
        208.0,       # Rectangle is 208px tall
        Theme::AMBER # Rectangle fill color = Moissanite::Theme::AMBER
      )

      Rl.end_drawing
    end

    def exit
      Rl.close_window
    end

  end
end

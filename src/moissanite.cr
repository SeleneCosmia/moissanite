require "raylib-cr"
require "raylib-cr/rlgl"
require "raylib-cr/raygui"
require "./moissanite/window"

alias Rl = Raylib
alias Rg = Raygui

module Moissanite
  alias Rl   = Raylib
  alias Rg   = Raygui
  alias Key  = Rl::KeyboardKey
  alias Vec2 = Rl::Vector2
  alias Rect = Rl::Rectangle
end
require "raylib-cr"
alias Color = Raylib::Color

module Moissanite::Theme
    ONYX      = Color.new r: 4, g: 4, b: 4, a: 255              #rgb(4,4,4)
    BOULDER   = Color.new r: 48, g: 32, b: 31, a: 255           #rgb(48,32,31)
    GARNET    = Color.new r: 111, g: 35, b: 51, a: 255          #rgb(111,35,51)
    DUST      = Color.new r: 98, g: 70, b: 56, a: 255           #rgb(98,70,56)
    BERYL     = Color.new r: 137, g: 99, b: 77, a: 255          #rgb(137,99,77)
    AMBER     = Color.new r: 161, g: 87, b: 66, a: 255          #rgb(161,87,66)
    TOPAZ     = Color.new r: 170, g: 117, b: 93, a: 255         #rgb(170,117,93)
    MOONSTONE = Color.new r: 184, g: 147, b: 120, a: 255        #rgb(184,147,120)
end
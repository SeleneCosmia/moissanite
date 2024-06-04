require "raylib-cr"

module Moissanite
  class ColorScheme
    property! theme : String
    #getter colors_count : UInt8

    def initialize(@theme)
    end

    #def apply()
    #end
  end
end
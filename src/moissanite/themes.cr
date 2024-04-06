require "raylib-cr"
alias ColorObject = Raylib::Color

class Colorize
  private def self.newColor(r : Int32, g : Int32, b : Int32, a : Int32)
    c = ColorObject.new

    c.r = r.to_u8
    c.g = g.to_u8
    c.b = b.to_u8

    if a.nil?
      c.a = 255_u8
    else
      c.a = a.to_u8
    end

    return c
  end

  def self.clear
    return newColor(0, 0, 0, 0)
  end

  def self.random
    return newColor(rand(255), rand(255), rand(255), 255)
  end

  def self.create(r : Int32, g : Int32, b : Int32, a : Int32)
    if a.nil?
      a = 255
    else
      a = a.to_u8
    end

    return newColor(r, g, b, a)
  end

  def self.get(color : ColorObject)
    return [color.r.to_i, color.g.to_i, color.b.to_i, color.a.to_i]
  end
end
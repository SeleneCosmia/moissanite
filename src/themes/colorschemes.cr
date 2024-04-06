require "raylib-cr"

# TODO: finish implementation of ColorScheme based on
#  [Libre's Color file](https://github.com/haydenhigg/Libre/blob/7ce7c6e4039310dde4f409e101b5091eb67be360/src/Color.cr)
class ColorScheme
    def self.setTheme(theme : String)
      cs = ColorScheme
      return cs.setTheme(theme)
    end
end
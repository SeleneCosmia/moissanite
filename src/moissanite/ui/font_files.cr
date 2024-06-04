require "../window"

module Moissanite::UI::Fonts
  alias Fonts = Moissanite::UI::Fonts

  class_getter font : Rl::Font
  class_property? drawTitleFont = false
  class_property? drawMenuFont  = false

  class TitleFont
    TITLE_FONT =  "resources/fonts/demonicracy.ttf"
    
    def self.load(@@font : Rl::Font = Rl.load_font)
      @@font.file_name = TITLE_FONT
      @@font.font_size = 36

      @@drawTitleFont = !@@drawTitleFont
    end
  end

  class MenuFont
    MENU_FONT = "resources/fonts/antiquity-print.ttf"

    def self.load(@font : Rl::Font = Rl.load_font)
      @@font.file_name = MENU_FONT
      @@font.font_size = 24

      @@drawMenuFont = !@@drawMenuFont
    end
  end

  titleFont = TitleFont::TITLE_FONT
  menuFont  = MenuFont::MENU_FONT

  def self.unload
    font_a = !@@drawTitleFont
    font_b = !@@drawMenuFont
    if font_a
      Rl.unload_font(titleFont)
      @@drawTitleFont = false
    end
    if font_b
      Rl.unload_font(menuFont)
    end
  end
end
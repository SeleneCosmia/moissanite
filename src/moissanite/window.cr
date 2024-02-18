require "raylib-cr"
require "raylib-cr/rlgl"
require "./colors"
sw = 800
sh = 650
alias Rl = Raylib
Rl.init_window(sw, sh, "Moissssy")
Rl.set_target_fps(60)

until Rl.close_window?
    Rl.begin_drawing
    Rl.clear_background(Rl::RAYWHITE)
    # This method draws the initial color swatch from the palette
    # and then draws an outline over it, and places itself according to
    # size of window.
    Rl.draw_rectangle(sw/3*2, sh/2 /2, 120, 140, Moissanite::BOULDER)
    Rl.draw_rectangle(sw/4 + 30, sh/2 /2, 120, 140, Moissanite::GARNET)
    Rl.draw_rectangle(20, sh/2 /2, 120, 140, Moissanite::DUST)

    Rl.end_drawing
end

Rl.close_window

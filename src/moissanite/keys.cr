module Moissanite::Keys
  QUIT        = Key::Q
  
  WALK_LEFT   = Key::Left
  WALK_RIGHT  = Key::Right
#  RUN_LEFT    = (Key::Left && Key::RightShift)
#  RUN_RIGHT   = (Key::Right + Key::RightShift)


  @@current_frame    = 0
  @@frame_speed      = 8
  @@moving           = false



  def self.get_virus()

  def self.update
    if Rl.key_down?(WALK_LEFT) || Rl.key_down?(WALK_RIGHT)
      @@moving = !@@moving
    end

  end
end
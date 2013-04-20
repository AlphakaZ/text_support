class GameText < ActiveRecord::Base
  attr_accessible :background, :characterFace, :fontSize, :music, :orderNum, :part, :scene_id, :talker
end

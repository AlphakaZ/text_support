class Scene < ActiveRecord::Base
  attr_accessible :explanation, :game_id, :person, :tag1, :tag2, :tag3, :title, :when, :where
  has_many :game_texts
end

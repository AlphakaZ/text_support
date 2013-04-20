class CreateGameTexts < ActiveRecord::Migration
  def change
    create_table :game_texts do |t|
      t.text :part
      t.string :talker
      t.integer :fontSize
      t.integer :scene_id
      t.string :music
      t.string :background
      t.string :characterFace
      t.string :orderNum

      t.timestamps
    end
  end
end

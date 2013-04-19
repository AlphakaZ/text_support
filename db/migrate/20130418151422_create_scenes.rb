class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :title
      t.string :person
      t.string :tag1
      t.string :tag2
      t.string :tag3
      t.string :where
      t.string :when
      t.text :explanation
      t.integer :game_id

      t.timestamps
    end
  end
end

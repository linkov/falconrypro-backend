class CreateDiaryItems < ActiveRecord::Migration
  def change
    create_table :diary_items do |t|
      t.integer :weight
      t.integer :diet_offered
      t.integer :diet_eaten
      t.references :food, index: true, foreign_key: true
      t.text :note

      t.timestamps null: false
    end
  end
end

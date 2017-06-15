class CreateDiaryFoods < ActiveRecord::Migration
  def change
    create_table :diary_foods do |t|
      t.references :food, index: true, foreign_key: true
      t.integer :eaten
      t.time :time
      t.references :diary_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

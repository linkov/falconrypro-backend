class CreateDiaryWeights < ActiveRecord::Migration
  def change
    create_table :diary_weights do |t|
      t.integer :weight
      t.time :time
      t.references :diary_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

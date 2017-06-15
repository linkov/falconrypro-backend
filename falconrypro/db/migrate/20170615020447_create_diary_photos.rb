class CreateDiaryPhotos < ActiveRecord::Migration
  def change
    create_table :diary_photos do |t|
      t.string :photo
      t.references :quarry_type, index: true, foreign_key: true
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :long, precision: 10, scale: 6
      t.references :pin_item_type, index: true, foreign_key: true
      t.references :diary_item, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end

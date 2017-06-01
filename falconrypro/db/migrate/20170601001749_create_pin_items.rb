class CreatePinItems < ActiveRecord::Migration
  def change
    create_table :pin_items do |t|
      t.decimal :lat
      t.decimal :long
      t.references :diary_item, index: true, foreign_key: true
      t.references :pin_item_type, index: true, foreign_key: true
      t.text :note
      t.string :photo

      t.timestamps null: false
    end
  end
end

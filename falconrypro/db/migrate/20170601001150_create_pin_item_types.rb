class CreatePinItemTypes < ActiveRecord::Migration
  def change
    create_table :pin_item_types do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end

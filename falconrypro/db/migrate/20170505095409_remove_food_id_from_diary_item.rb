class RemoveFoodIdFromDiaryItem < ActiveRecord::Migration
  def change
    remove_foreign_key :diary_items, column: :food_id
    remove_column :diary_items, :food_id
  end
end

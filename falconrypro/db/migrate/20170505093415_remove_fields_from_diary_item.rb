class RemoveFieldsFromDiaryItem < ActiveRecord::Migration
  def change
    remove_column :diary_items, :diet_offered
    remove_column :diary_items, :diet_eaten
    remove_column :diary_items, :weight
  end
end

class CreateJoinTableQuarryTypeDiaryItem < ActiveRecord::Migration
  def change
    create_join_table :quarry_types, :diary_items do |t|
      # t.index [:quarry_type_id, :diary_item_id]
      # t.index [:diary_item_id, :quarry_type_id]
    end
  end
end

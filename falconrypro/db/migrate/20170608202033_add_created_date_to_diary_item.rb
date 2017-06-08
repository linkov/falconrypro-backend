class AddCreatedDateToDiaryItem < ActiveRecord::Migration
  def change
    add_column :diary_items, :created_date, :date
  end
end

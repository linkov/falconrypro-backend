class ChangeDiaryItemCreatedDateToDateTime < ActiveRecord::Migration
  def change
    change_column :diary_items, :created_date, :datetime
  end
end

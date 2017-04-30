class AddBirdToDiaryItem < ActiveRecord::Migration
  def change
    add_reference :diary_items, :bird, index: true, foreign_key: true
  end
end

class AddSeasonToDiaryItem < ActiveRecord::Migration
  def change
    add_reference :diary_items, :season, index: true, foreign_key: true
  end
end

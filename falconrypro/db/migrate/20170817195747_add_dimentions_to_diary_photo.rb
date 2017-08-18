class AddDimentionsToDiaryPhoto < ActiveRecord::Migration
  def change
    add_column :diary_photos, :width, :float
    add_column :diary_photos, :height, :float
  end
end

class AddBirdToDiaryPhoto < ActiveRecord::Migration
  def change
    add_reference :diary_photos, :bird, index: true, foreign_key: true
  end
end

class AddBirdToSeason < ActiveRecord::Migration
  def change
    add_reference :seasons, :bird, index: true, foreign_key: true
  end
end

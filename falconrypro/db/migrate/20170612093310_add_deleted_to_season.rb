class AddDeletedToSeason < ActiveRecord::Migration
  def change
    add_column :seasons, :deleted, :Date
  end
end

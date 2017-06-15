class AddPopularToFood < ActiveRecord::Migration
  def change
    add_column :foods, :popular, :boolean, :default => false
  end
end

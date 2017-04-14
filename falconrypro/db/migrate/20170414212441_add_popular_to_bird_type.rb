class AddPopularToBirdType < ActiveRecord::Migration
  def change
    add_column :bird_types, :popular, :boolean, :default => false
  end
end

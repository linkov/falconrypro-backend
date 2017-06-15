class AddNameToFoodGroup < ActiveRecord::Migration
  def change
    add_column :food_groups, :name, :string
  end
end

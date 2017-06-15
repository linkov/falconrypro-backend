class AddOrderToBirdType < ActiveRecord::Migration
  def change
    add_column :bird_types, :order, :integer, :default => 3000
  end
end

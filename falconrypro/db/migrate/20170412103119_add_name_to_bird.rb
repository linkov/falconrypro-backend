class AddNameToBird < ActiveRecord::Migration
  def change
    add_column :birds, :name, :string
  end
end

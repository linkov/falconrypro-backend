class AddLatinToBirdType < ActiveRecord::Migration
  def change
    add_column :bird_types, :latin, :string
  end
end

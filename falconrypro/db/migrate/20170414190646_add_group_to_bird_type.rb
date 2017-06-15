class AddGroupToBirdType < ActiveRecord::Migration
  def change
    add_reference :bird_types, :group, index: true, foreign_key: true
  end
end

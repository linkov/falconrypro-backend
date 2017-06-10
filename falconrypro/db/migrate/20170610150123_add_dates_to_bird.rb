class AddDatesToBird < ActiveRecord::Migration
  def change
    add_column :birds, :dead, :date
    add_column :birds, :sold, :date
    add_column :birds, :deleted, :date
  end
end

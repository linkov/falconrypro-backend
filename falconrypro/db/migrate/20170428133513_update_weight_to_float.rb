class UpdateWeightToFloat < ActiveRecord::Migration
  def change
      change_column :birds, :hunting_weight, :integer
      change_column :birds, :fat_weight, :integer
    end
end

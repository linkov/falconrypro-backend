class RemoveRateTypeId < ActiveRecord::Migration
  def change
    remove_foreign_key :birds, column: :bird_type_id
    remove_column :birds, :bird_type_id
  end
end

class AddQuarryGroupToQuarryType < ActiveRecord::Migration
  def change
    add_reference :quarry_types, :quarry_group, index: true, foreign_key: true
  end
end

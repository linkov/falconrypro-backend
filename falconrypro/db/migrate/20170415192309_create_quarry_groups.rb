class CreateQuarryGroups < ActiveRecord::Migration
  def change
    create_table :quarry_groups do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

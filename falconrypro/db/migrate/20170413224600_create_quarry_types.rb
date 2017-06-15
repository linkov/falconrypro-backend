class CreateQuarryTypes < ActiveRecord::Migration
  def change
    create_table :quarry_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

class CreateBirdTypes < ActiveRecord::Migration
  def change
    create_table :bird_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.references :bird_type, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.boolean :sex
      t.string :code
      t.date :birthday
      t.decimal :fat_weight
      t.decimal :hunting_weight

      t.timestamps null: false
    end
  end
end

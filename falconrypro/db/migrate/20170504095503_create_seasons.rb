class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.date :start
      t.date :end
      t.boolean :between

      t.timestamps null: false
    end
  end
end

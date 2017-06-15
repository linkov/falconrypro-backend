class CreateJoinTableBirdTypeBird < ActiveRecord::Migration
  def change
    create_join_table :bird_types, :birds do |t|
      # t.index [:bird_type_id, :bird_id]
      # t.index [:bird_id, :bird_type_id]
    end
  end
end

class AddBirdimageToBirds < ActiveRecord::Migration
  def change
    add_column :birds, :birdimage, :string
  end
end

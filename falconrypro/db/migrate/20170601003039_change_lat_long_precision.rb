class ChangeLatLongPrecision < ActiveRecord::Migration
  def change
    change_column :pin_items, :lat, :decimal, :precision => 10, :scale => 6
    change_column :pin_items, :long, :decimal, :precision => 10, :scale => 6
  end
end

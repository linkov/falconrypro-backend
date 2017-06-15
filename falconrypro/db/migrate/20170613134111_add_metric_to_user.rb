class AddMetricToUser < ActiveRecord::Migration
  def change
    add_column :users, :metric, :boolean, :default => true
  end
end

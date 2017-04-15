ActiveAdmin.register Food do
  permit_params :name, :food_group
  before_filter :skip_sidebar!, :only => :index
  index  do
  selectable_column
  column :name
  column :food_group
  actions
  end
end

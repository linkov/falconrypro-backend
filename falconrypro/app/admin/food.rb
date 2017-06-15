ActiveAdmin.register Food do
  permit_params :name, :food_group, :popular
  before_filter :skip_sidebar!, :only => :index
  index  do
  selectable_column
  column :popular
  column :name
  column :food_group
  actions
  end
end

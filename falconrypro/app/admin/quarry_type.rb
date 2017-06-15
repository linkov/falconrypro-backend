ActiveAdmin.register QuarryType do
  permit_params :name, :quarry_group_id
  before_filter :skip_sidebar!, :only => :index
  index  do
  selectable_column
  column :name
  column :quarry_group
  actions
  end
end

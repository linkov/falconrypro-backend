ActiveAdmin.register BirdType do
  permit_params :name, :latin, :group_id
  before_filter :skip_sidebar!, :only => :index
  index  do
  selectable_column
  column :name
  column :latin
  column :group
  actions
  end
end

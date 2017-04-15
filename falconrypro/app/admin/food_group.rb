ActiveAdmin.register FoodGroup do
  permit_params :name
  before_filter :skip_sidebar!, :only => :index
  index  do
  selectable_column
  column :name
  actions
  end
end

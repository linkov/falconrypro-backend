ActiveAdmin.register PinItemType do
  permit_params :title
  before_filter :skip_sidebar!, :only => :index

end

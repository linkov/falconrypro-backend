ActiveAdmin.register DiaryItem do
  permit_params :diet_eaten, :diet_offered, :foods, :season
  before_filter :skip_sidebar!, :only => :index
  menu parent: 'User generated'

end

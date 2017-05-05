ActiveAdmin.register DiaryItem do
  permit_params :diary_foods, :season_id, :diary_weights, :bird_id
  before_filter :skip_sidebar!, :only => :index
  menu parent: 'User generated'

end

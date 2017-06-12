ActiveAdmin.register Season do
  permit_params :start, :end, :between, :diary_items, :bird_id, :deleted
  menu parent: 'User generated'

end

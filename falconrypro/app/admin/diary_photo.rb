ActiveAdmin.register DiaryPhoto do
  permit_params :photo, :lat, :long, :pin_item_type_id, :bird_id
  menu parent: 'User generated'
  before_filter :skip_sidebar!, :only => :index


  form do |f|
  f.inputs "" do
    f.input :bird
    f.input :lat
    f.input :long
    f.input :pin_item_type
    f.input :photo, :as => :file, :label => 'Preview image', :hint => image_tag(diary_photo.photo.url(:thumb))

    end
    f.actions
  end


  index  do
    selectable_column
    column :bird
    column "Photo" do |diary_photo|
      image_tag diary_photo.photo.url(:thumb)
    end
    actions
  end
end

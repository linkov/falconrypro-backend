ActiveAdmin.register PinItem do
  permit_params :pin_item_type_id, :note, :diary_item_id, :photo, :lat, :long
  menu parent: 'User generated'

  index  do
  selectable_column
  column :pin_item_type
  column :lat
  column :long
  column :note

  column "Image" do |pin_item|
    image_tag pin_item.photo.url(:small_thumb)
  end

  actions
end

end

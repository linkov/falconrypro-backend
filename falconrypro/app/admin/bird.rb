ActiveAdmin.register Bird do
  permit_params :name, :user_id, :bird_type_id, :code, :fat_weight, :hunting_weight, :sex, :birthday, :birdimage
  menu parent: 'User generated'

  index  do
  selectable_column
  column :name
  column :bird_type
  column "Image" do |bird|
    image_tag bird.birdimage.url(:small_thumb)
  end
  actions
end

end

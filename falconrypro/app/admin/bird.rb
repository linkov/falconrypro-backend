ActiveAdmin.register Bird do
  permit_params :name, :user_id, :bird_type_ids, :code, :fat_weight, :hunting_weight, :sex, :birthday, :birdimage
  menu parent: 'User generated'

  index  do
  selectable_column
  column :name
  column 'Bird types' do |bird|
      bird.bird_types.pluck(:name)
    end
  column "Image" do |bird|
    image_tag bird.birdimage.url(:small_thumb)
  end
  actions
end

end

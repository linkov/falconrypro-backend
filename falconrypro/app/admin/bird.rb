ActiveAdmin.register Bird do
  permit_params :name, :user_id, :bird_type_id, :code, :fat_weight, :hunting_weight, :sex, :birthday, :birdimage
  menu parent: 'User generated'

end

class DiaryPhotoSerializer < ActiveModel::Serializer
  attributes :id, :pin_item_type_id, :photo, :width, :height, :created_at, :pin_item_type_title

  def id
    object.id.to_s
  end

  def pin_item_type_title
    object.pin_item_type.title
  end


end

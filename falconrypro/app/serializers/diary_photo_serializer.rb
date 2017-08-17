class DiaryPhotoSerializer < ActiveModel::Serializer
  attributes :id, :pin_item_type_id, :photo

  def id
    object.id.to_s
  end


end

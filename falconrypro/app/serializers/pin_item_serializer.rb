class PinItemSerializer < ActiveModel::Serializer
  attributes :id, :lat, :long, :note, :photo, :pin_type_name


  def id
    object.id.to_s
  end

  def pin_type_name

    object.pin_item_type.title
  end


end
